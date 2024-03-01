import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  List _loadedNews = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<void> _fetchData() async {
      const apiUrl = 'https://reuters-business-and-financial-news.p.rapidapi.com/article-date/2024-02-28/0/10/?663772f7f9mshb80b3d84c3b16a4p19a7fejsn54ce51121b93';

      final response = await http.get(Uri.parse(apiUrl));
      final data = json.decode(response.body);

      setState(() {
        _loadedNews = data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Trending News', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
      body: NewsList(_loadedNews),

    );
  }
}




class NewsList extends StatelessWidget {
  // A stateless widget that does not depend on any external state
  final List _loadedNews; // A final field that stores the list of news

  NewsList(this._loadedNews); // A constructor that takes the list of news as a parameter

  @override
  Widget build(BuildContext context) {
    // A method that returns a widget
    return ListView.builder(
      // The widget that you want to return
      itemCount: _loadedNews.length, // The number of items in the list
      itemBuilder: (context, index) {
        // A function that returns a widget for each item
        return ListTile(
          // A widget that displays a tile with a title and a subtitle
          title: Text(_loadedNews[index]['articlesName']), // The title of the news article
          subtitle: Text(_loadedNews[index]['articlesShortDescription']), // The description of the news article
          onTap: () {
            // A function that is called when the tile is tapped
            // You can navigate to another screen to show the full article
          },
        );
      },
    );
  }
}
