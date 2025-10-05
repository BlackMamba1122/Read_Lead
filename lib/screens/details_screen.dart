import 'dart:math';

import 'package:Read_Lead/db/topic.dart';
import 'package:Read_Lead/screens/pdf_reader.dart';

import '../db/books.dart';
import '../widgets/book_rating.dart';
import '../widgets/rounded_button.dart';
import 'package:flutter/material.dart';

import 'fav.dart';

class DetailsScreen extends StatelessWidget {
  final String id;
   DetailsScreen({super.key,
    required this.id,
  });
  @override
  Widget build(BuildContext context) {
  final Book book = books.firstWhere((b) => b.id == id);
  final BookTopic = booksTopic.firstWhere((b)=>b.id == id);

  List<String> allIds = ["001", "002", "003", "004", "005"];
  List<String> availableIds = allIds.where((Id) => !id.contains(Id)).toList();
  final random = Random();
  String newId =  availableIds[random.nextInt(availableIds.length)];
  final Book newBook = books.firstWhere((b) => b.id == newId);

    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Book Info Section
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(
                      top: size.height * .12,
                      left: size.width * .1,
                      right: size.width * .02,
                    ),
                    height: size.height * .55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: BookInfo(size: size, book: book),
                  ),

                  // Topic Cards start AFTER BookInfo
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: BookTopic.topics.map((i) {
                        return TopicCard(
                          topic: i,
                          book: book,
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headlineMedium,
                      children: [
                        TextSpan(
                          text: "You might also ",
                        ),
                        TextSpan(
                          text: "like….",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, top: 24, right: 150),
                          height: 190,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title (max 2 lines)
                                  Text(
                                    newBook.title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color:  Color(0xFF393939),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14, // adjust size if needed
                                    ),
                                  ),
                                  SizedBox(height: 4),

                                  // Author (max 1 line)
                                  Text(
                                    newBook.author,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color(0xFF8F8F8F),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  BookRating(
                                    score: newBook.rating,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: RoundedButton(
                                      fontSize: 14,
                                      text: "Read",
                                      verticalPadding: 10,
                                        press: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => PdfReaderScreen(
                                                pdfAssetPath: newBook.bookUrl,
                                                title: newBook.title,
                                              ),
                                            ),
                                          );
                                        },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          newBook.coverUrl,
                          width: 150,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}


class TopicCard extends StatefulWidget {
  final Topic topic;
  final Book book;
  final double indent;
  final double fontSize;

  const TopicCard({
    Key? key,
    required this.book,
    required this.topic,
    this.indent = 10,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  _TopicCardState createState() => _TopicCardState();
}

class _TopicCardState extends State<TopicCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          margin: EdgeInsets.only(left: 10+widget.indent,right: 30,bottom: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(38.5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 20,
                color: Color(0xFFD3D3D3).withOpacity(.84),
              ),
            ],
          ),
          child: Row(
            children: [
              if (widget.topic.subTopics.isNotEmpty)
                IconButton(
                  icon: Icon(
                    isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  ),
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                )
              else
                SizedBox(width:25),
              Expanded(
                child: Text(
                  "${widget.topic.name}",
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color:  Color(0xFF393939),
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios, size: 18),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PdfReaderScreen(
                          pdfAssetPath: widget.book.bookUrl,
                          initialPage: widget.topic.startPage,
                          title: widget.book.title,
                        ),
                      ),
                    );
                  },
              ),
            ],
          ),
        ),
        if (isExpanded && widget.topic.subTopics.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: widget.topic.subTopics
                  .map(
                    (sub) => TopicCard(
                  topic: sub,
                  book: widget.book,
                  indent: (widget.indent/4)*8,
                  fontSize: widget.fontSize - 1,
                ),
              )
                  .toList(),
            ),
          ),
      ],
    );
  }
}





class BookInfo extends StatelessWidget {
  
  const BookInfo({
    Key? key,
    required this.size,
    required this.book,
  }) : super(key: key);

  final Size size;
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    maxLines: 4,
                    book.title,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  // margin: EdgeInsets.only(top: this.size.height * .005),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    maxLines: 1,
                    book.author,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8F8F8F),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: this.size.width * .3,
                          padding: EdgeInsets.only(top: this.size.height * .02),
                          child: Text(
                            "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FavouriteIcon(id: book.id),
                        BookRating(score: book.rating),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 12,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PdfReaderScreen(
                              pdfAssetPath: book.bookUrl,
                              title: book.title,
                            ),
                          ),
                        );
                      },
                    child: const Text(
                      "Read",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.transparent,
              child: Image.asset(
                book.coverUrl,
                height: double.infinity,
                alignment: Alignment.topRight,
                fit: BoxFit.fitWidth,
              ),
          )),
        ],
      ),
    );
  }
}