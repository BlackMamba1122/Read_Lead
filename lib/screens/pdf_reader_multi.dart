import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfBook {
  final String title;
  final String pdfAssetPath;
  final List<int> bookmarks;

  PdfBook({
    required this.title,
    required this.pdfAssetPath,
    required this.bookmarks,
  });
}

final nameMap = {
  "A Guide to the Project Management Body of Knowledge": "PMBOK",
  "Managing Successful Projects with PRINCE2": "PRINCE2",
  "Project, programme and portfolio management — Context and concepts": "ISO2021",
  "Project, programme and portfolio management — Guidance on project management": "ISO2020",
  "Process Group: A Practice Guide": "PMI"
};

class MultiPdfReaderScreen extends StatefulWidget {
  final List<PdfBook> books;
  final String heading;

  const MultiPdfReaderScreen({super.key, required this.books,required this.heading});

  @override
  State<MultiPdfReaderScreen> createState() => _MultiPdfReaderScreenState();
}

class _MultiPdfReaderScreenState extends State<MultiPdfReaderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<PdfController> _controllers = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.books.length, vsync: this);

    for (var book in widget.books) {
      final controller = PdfController(
        document: PdfDocument.openAsset(book.pdfAssetPath),
        initialPage: book.bookmarks.isNotEmpty ? book.bookmarks.first : 1,
      );
      _controllers.add(controller);
    }
  }

  @override
  void dispose() {
    for (var c in _controllers) {
      c.dispose();
    }
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.black26,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        title: Text("📚 ${widget.heading}}"),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ],
          ),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          tabs: widget.books.map((b) {
            final shortName = nameMap[b.title] ?? b.title;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: Text(
                shortName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: widget.books.asMap().entries.map((entry) {
          int index = entry.key;
          PdfBook book = entry.value;
          return _PdfBookView(
            book: book,
            controller: _controllers[index],
          );
        }).toList(),
      ),
    );
  }
}

class _PdfBookView extends StatelessWidget {
  final PdfBook book;
  final PdfController controller;

  const _PdfBookView({
    super.key,
    required this.book,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PdfView(
            controller: controller,
            scrollDirection: Axis.vertical, // 👈 smooth vertical scroll
            pageSnapping: false,
          ),
        ),
        if (book.bookmarks.isNotEmpty)
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, -2),
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: book.bookmarks.map((page) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ActionChip(
                      label: Text("Pg $page"),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Colors.blueAccent,
                      elevation: 2,
                      onPressed: () => controller.jumpToPage(page),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
      ],
    );
  }
}
