import 'dart:math';

import 'package:Read_Lead/screens/pdf_reader.dart';
import '../widgets/book_rating.dart';
import '../widgets/reading_card_list.dart';
import '../widgets/two_side_rounded_button.dart';
import 'package:Read_Lead/db/books.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> availableIds = ["001", "002", "003", "004", "005"];
    final random = Random();
    String randId =  availableIds[random.nextInt(availableIds.length)];

    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headlineLarge,
                        children: [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: books.map((book) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: ReadingListCard(
                            id: book.id,
                            image: book.coverUrl,
                            title: book.title,
                            auth: book.author,
                            rating: book.rating,
                            bookUrl: book.bookUrl,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headlineLarge,
                            children: [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ),
                        BestOfTheDayCard(id:randId),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headlineLarge,
                            children: [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          child: continueReading(id: '001',page: 7),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class continueReading extends StatelessWidget {
  final String id;
  final int page;
  const continueReading({
    super.key,
    required this.id,required this.page,
  });


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Book book = books.firstWhere((b) => b.id == id);
    double progress=page/book.pages;
    return ClipRRect(
      borderRadius: BorderRadius.circular(38.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.end,
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          maxLines: 1,
                          book.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          maxLines: 1,
                          book.author,
                          style: TextStyle(
                            color: Color(0xFF8F8F8F),
                          ),
                        ),
                        Align(
                          alignment:
                              Alignment.bottomRight,
                          child: Text(
                            "Page ${page} of ${book.pages}",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF8F8F8F),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                  Image.asset(
                    book.coverUrl,
                    width: 55,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 7,

            width: size.width * progress,
            decoration: BoxDecoration(
              color: Color(0xFFBE7066),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ],
      ),
    );
  }
}

class BestOfTheDayCard extends StatelessWidget {
  final String id;

  const BestOfTheDayCard({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final Book book = books.firstWhere((b) => b.id == id);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          // background
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 230,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Pakistan Best For 31th Feb 2025",
                    style: TextStyle(fontSize: 9, color: Color(0xFF8F8F8F)),
                  ),
                  Text(
                    book.title,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    book.author,
                    style: TextStyle(color: Color(0xFF8F8F8F)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: BookRating(score: book.rating),
                        ),
                        Expanded(
                          child: Text(
                              "When the earth was flat and everyone wanted to win the game of the best and people….",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10, color: Color(0xFF8F8F8F)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // image
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              book.coverUrl,
              width: size.width * .37,
              fit: BoxFit.cover,
            ),
          ),

          // read button
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

