import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  // A stateless widget that displays the news page
  @override
  Widget build(BuildContext context) {
    // A method that returns a widget
    return Scaffold(
      // A widget that provides a scaffold for the app
      appBar: AppBar(centerTitle: true, title: Text('News', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
      body: ListView(
        // A widget that displays a list of widgets
        children: <Widget>[
          // The list of widgets
          _buildTile(
            // A function that builds a tile with a title and a description
            'Flutter Listview with rounded corners - Stack Overflow', // The title of the news article
            'I\'m trying to create a listview with rounded corners in Flutter. I thought I might have been on the right track by adding a ClipRRect wrapped around the listview. However, when I did so only the top corners were rounded, the bottom ones were not, I assume this is because the listview did not have enough rows to take up the full screen, but the ClipRRect, must be taking up the full scren width. What\'s the best way to add rounded corners to the listview widget?', // The description of the news article
          ),
          _buildTile(
            // Another tile
            'flutter - ListView with Rounded Edges - Stack Overflow',
            'What is the best way to implement the following ListView with the corner edge in Flutter? Since I need overlapping on the rounded corner, is there a certain implementation using Stack and Positioned for this?',
          ),
          _buildTile(
            // Another tile
            'How to Create Rounded ListTile in Flutter - KindaCode',
            'In Flutter, you can implement a ListTile widget with rounded corners by setting its shape property to RoundedRectangleBorder(/*...*/). Below is a concrete example that demonstrates this.',
          ),
          _buildTile(
            // Another tile
            'Flutter - Introduction to Widgets',
            'A widget is the basic building block of a Flutter app. A widget can define a structural element, a stylistic element, an aspect of layout, or some business logic. Widgets form a hierarchy based on composition. Each widget nests inside its parent widget and inherits properties from its parent. You can override some of these properties to customize the appearance and behavior of your widgets.',
          ),
          _buildTile(
            // Another tile
            'Flutter - Creating Custom Widgets',
            'You can create your own custom widgets by extending the Widget class and overriding the build method. The build method returns another widget, which is the actual representation of the widget on the screen. You can use existing widgets as building blocks for your custom widgets, or create completely new widgets from scratch.',
          ),
          _buildTile(
            // Another tile
            'Flutter: How to create a custom widget',
            'In this article, we will learn how to create a custom widget in Flutter. We will create a widget that displays a circular avatar with a border and a label below it. We will also see how to pass parameters to our custom widget and how to use it in our app.',
          ),
          _buildTile(
            // Another tile
            'Building a news app with Flutter',
            'In this tutorial, we will learn how to build a simple news app with Flutter. We will use the NewsAPI service to fetch the latest news from different sources and categories. We will also use some Flutter widgets and packages to create a nice user interface and functionality for our app.',
          ),
          _buildTile(
            // Another tile
            'Flutter News App with NewsApi Org',
            'In this article, we will see how to make a news app in flutter using NewsApi Org as our REST API. NewsApi Org is a great source for news data and it provides us with live headlines, images, and other article metadata from a range of sources including TechCrunch, BBC News, CNN, and more.',
          ),
        ],
      ),
    );
  }

  Widget _buildTile(String title, String description) {
    // A function that returns a widget that displays a tile with a title and a description
    return Container(
      // A widget that displays a container with some padding and decoration
      padding: EdgeInsets.all(8), // The padding of the container
      decoration: BoxDecoration(
        // The decoration of the container
        borderRadius: BorderRadius.circular(12), // The rounded corners of the container
        color: Colors.white, // The background color of the container
        boxShadow: [
          // The shadow effect of the container
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // The color of the shadow
            spreadRadius: 2, // The spread radius of the shadow
            blurRadius: 4, // The blur radius of the shadow
            offset: Offset(0, 2), // The offset of the shadow
          ),
        ],
      ),
      child: Column(
        // A widget that displays a column of widgets
        crossAxisAlignment: CrossAxisAlignment.start, // The alignment of the widgets along the cross axis
        children: <Widget>[
          // The list of widgets
          Text(
            // A widget that displays a text
            title, // The text to display
            style: TextStyle(
              // The style of the text
              fontSize: 18, // The font size of the text
              fontWeight: FontWeight.bold, // The font weight of the text
            ),
          ),
          SizedBox(
            // A widget that displays an empty space
            height: 8, // The height of the space
          ),
          Text(
            // Another text widget
            description, // The text to display
            style: TextStyle(
              // The style of the text
              fontSize: 14, // The font size of the text
              color: Colors.grey, // The color of the text
            ),
            maxLines: 3, // The maximum number of lines to display
            overflow: TextOverflow.ellipsis, // The overflow behavior of the text
          ),
        ],
      ),
    );
  }
}
