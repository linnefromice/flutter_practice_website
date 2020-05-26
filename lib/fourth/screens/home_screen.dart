import 'package:flutter/material.dart';
import 'package:flutter_practice_website/fourth/models/article_model.dart';
import 'package:flutter_practice_website/fourth/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeScreen> {

  List<Article> _articles = [];

  @override
  void initState() {
    super.initState();
    _fetchArticles();
  }

  _fetchArticles() async {
    List<Article> articles = await ApiService().fetchArticlesBySection('technology');
    setState(() => _articles = articles);
  }

  _buildArticlesGrid(MediaQueryData mediaQuery) {
    List<GridTile> tiles = [];
    _articles.forEach((article) {
      tiles.add(_buildArticleTile(article, mediaQuery));
    });
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 50.0),
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 30.0,
        crossAxisSpacing: 30.0,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: tiles,
      ),
    );
  }

  _buildArticleTile(Article article, MediaQueryData mediaQuery) {
    return GridTile(
      child: Column(
        children: <Widget>[
          Container(
            height: 250.0,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              image: DecorationImage(
                image: NetworkImage(article.imageUrl),
                fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            height: 120.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 1),
                  blurRadius: 6.0
                ),
              ],
            ),
            child: Text(
              article.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 80.0),
          Center(
            child: Text(
              'The New York Times\nTop Tech Articles',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          _articles.length > 0
            ? _buildArticlesGrid(mediaQuery)
            : Center(
                child: CircularProgressIndicator(),
              ),
        ],
      ),
    );
  }
}