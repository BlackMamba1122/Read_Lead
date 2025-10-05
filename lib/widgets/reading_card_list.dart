import 'package:Read_Lead/screens/fav.dart';

import '../screens/details_screen.dart';
import '../screens/pdf_reader.dart';
import 'book_rating.dart';
import 'two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final String id;
  final String bookUrl;

  const ReadingListCard({super.key,
    required this.id,
    required this.image,
    required this.title,
    required this.auth,
    required this.rating,
    required this.bookUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: Color(0xFFD3D3D3).withOpacity(.84),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -40,
            child: SizedBox(
              height: 200,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8), // optional rounded corners
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: <Widget>[
                FavouriteIcon(id: id),
                BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
            top: 140,
            child: Container(
              height: 105,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title (max 2 lines)
                        Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF393939),
                            fontWeight: FontWeight.bold,
                            fontSize: 14, // adjust size if needed
                          ),
                        ),
                        SizedBox(height: 4),

                        // Author (max 1 line)
                        Text(
                          auth,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF8F8F8F),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  DetailsScreen(id:id),
                            ),
                          );
                      },
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Details"),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: "Read",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => PdfReaderScreen(
                                  pdfAssetPath: bookUrl,
                                  title: title,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
