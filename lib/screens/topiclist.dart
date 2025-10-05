import 'package:flutter/material.dart';
import 'package:Read_Lead/screens/pdf_reader_multi.dart';

// imports...
import '../db/books.dart';
import '../section2/differences_5books.dart';
import '../section2/differences_4books.dart';
import '../section2/differences_3books.dart';
import '../section2/differences_2books.dart';

import '../section2/similarities_5books.dart';
import '../section2/similarities_4books.dart';
import '../section2/similarities_3books.dart';
import '../section2/similarities_2books.dart';

import '../section2/unique_topics.dart';

class TopicListView extends StatelessWidget {
  final String type;
  final Set<int> selectedBooks;

  const TopicListView({
    super.key,
    required this.type,
    required this.selectedBooks,
  });

  List<Map<String, dynamic>> loadTopics() {
    if (type == "Unique") {
      if (selectedBooks.length != 1) {
        return [];
      }
      return unique_topics;
    }

    final count = selectedBooks.length;
    List<Map<String, dynamic>> topics = [];

    if (type == "Similarities") {
      switch (count) {
        case 5:
          topics = List<Map<String, dynamic>>.from(similarities_5books);
          break;
        case 4:
          topics = List<Map<String, dynamic>>.from(similarities_4books);
          break;
        case 3:
          topics = List<Map<String, dynamic>>.from(similarities_3books);
          break;
        case 2:
          topics = List<Map<String, dynamic>>.from(similarities_2books);
          break;
      }
    } else if (type == "Differences") {
      switch (count) {
        case 5:
          topics = List<Map<String, dynamic>>.from(differences_5books);
          break;
        case 4:
          topics = List<Map<String, dynamic>>.from(differences_4books);
          break;
        case 3:
          topics = List<Map<String, dynamic>>.from(differences_3books);
          break;
        case 2:
          topics = List<Map<String, dynamic>>.from(differences_2books);
          break;
      }
    }

    if (selectedBooks.isEmpty) return [];

    final Set<int> selectedSet = selectedBooks;

    return topics.where((item) {
      final List booksList = item['books'] as List;
      final Set<int> topicBookIds =
      booksList.map((b) => (b['id'] as num).toInt()).toSet();
      return topicBookIds.containsAll(selectedSet);
    }).cast<Map<String, dynamic>>().toList();
  }

  @override
  Widget build(BuildContext context) {
    if (type == "Unique" && selectedBooks.length != 1) {
      return const Center(
        child: Text(
          "⚠ Please select exactly 1 book for Unique view.",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      );
    }

    final topics = loadTopics();

    if (topics.isEmpty) {
      return const Center(
        child: Text(
          "No topics found for selected books.",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: topics.length,
      itemBuilder: (context, index) {
        final topic = topics[index];

        return GestureDetector(
          onTap: () {
            final List<dynamic> booksInfo = topic["books"];
            final List<PdfBook> pdfBooks = booksInfo.map<PdfBook>((bookEntry) {
              String bookId = bookEntry["id"].toString();
              final List<int> pages = (bookEntry["pages"] as List)
                  .map((p) => (p as num).toInt())
                  .toList();

              bookId = '00$bookId';
              final book = books.firstWhere(
                    (b) => b.id == bookId,
                orElse: () => throw Exception("Book with id $bookId not found"),
              );

              return PdfBook(
                title: book.title,
                pdfAssetPath: book.bookUrl,
                bookmarks: pages,
              );
            }).toList();

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MultiPdfReaderScreen(books: pdfBooks,heading: topic["title"],),
              ),
            );
          },
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Leading colored circle/icon
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: type == "Similarities"
                            ? [Colors.green, Colors.lightGreen]
                            : type == "Differences"
                            ? [Colors.orange, Colors.deepOrangeAccent]
                            : [Colors.deepPurple, Colors.purpleAccent],
                      ),
                    ),
                    child: const Icon(Icons.book, color: Colors.white, size: 24),
                  ),
                  const SizedBox(width: 16),

                  // Title + info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          topic["title"],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "${(topic["books"] as List).length} related books",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
