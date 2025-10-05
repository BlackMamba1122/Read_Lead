import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfReaderScreen extends StatefulWidget {
  final String pdfAssetPath;
  final int initialPage;
  final String title;

  const PdfReaderScreen({
    Key? key,
    required this.pdfAssetPath,
    this.initialPage = 1,
    this.title = "PDF Reader",
  }) : super(key: key);

  @override
  State<PdfReaderScreen> createState() => _PdfReaderScreenState();
}

class _PdfReaderScreenState extends State<PdfReaderScreen> {
  final PdfViewerController _pdfController = PdfViewerController();
  PdfTextSearchResult _searchResult = PdfTextSearchResult();

  final TextEditingController _searchController = TextEditingController();
  bool _isLoading = true;
  bool _showSearchBar = false;
  List<int> _bookmarks = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pdfController.jumpToPage(widget.initialPage);
    });
  }

  void _addBookmark() {
    final page = _pdfController.pageNumber;
    if (!_bookmarks.contains(page)) {
      setState(() {
        _bookmarks.add(page);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Bookmarked page $page')),
      );
    }
  }

  void _startSearch(String keyword) async {
    _searchResult = await _pdfController.searchText(keyword);
    if (_searchResult.totalInstanceCount > 0) {
      _searchResult.nextInstance(); // jump to first occurrence
    }
    setState(() {});
  }

  void _clearSearch() {
    _searchController.clear();
    _searchResult.clear();
    _showSearchBar=false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: () {
              setState(() {
                _showSearchBar = !_showSearchBar;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.bookmark),
            tooltip: "Add Bookmark",
            onPressed: _addBookmark,
          ),
          IconButton(
            icon: Icon(Icons.navigate_before),
            tooltip: "Previous Page",
            onPressed: () => _pdfController.previousPage(),
          ),
          IconButton(
            icon: Icon(Icons.navigate_next),
            tooltip: "Next Page",
            onPressed: () => _pdfController.nextPage(),
          ),
        ],
      ),

      body: Column(
        children: [
          // 🔍 Search bar under AppBar
          if (_showSearchBar)
            Container(
              color: Colors.blueGrey.shade100,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: "Search in PDF",
                        border: InputBorder.none,
                      ),
                      onSubmitted: (value) => _startSearch(value),
                    ),
                  ),
                  if (_searchResult.totalInstanceCount > 0)
                    Text(
                      "${_searchResult.currentInstanceIndex + 1} / ${_searchResult.totalInstanceCount}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  IconButton(
                    icon: Icon(Icons.arrow_upward),
                    tooltip: "Previous Match",
                    onPressed: () {
                      if (_searchResult.hasResult) {
                        _searchResult.previousInstance();
                        setState(() {});
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_downward),
                    tooltip: "Next Match",
                    onPressed: () {
                      if (_searchResult.hasResult) {
                        _searchResult.nextInstance();
                        setState(() {});
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.clear),
                    tooltip: "Clear Search",
                    onPressed: _clearSearch,
                  ),
                ],
              ),
            ),

          // 📄 PDF Viewer
          Expanded(
            child: Stack(
              children: [
                SfPdfViewer.asset(
                  widget.pdfAssetPath,
                  controller: _pdfController,
                  onDocumentLoaded: (details) {
                    setState(() => _isLoading = false);
                  },
                  enableTextSelection: true,
                  canShowScrollStatus: true,
                  canShowScrollHead: true,
                ),
                if (_isLoading)
                  Container(
                    color: Colors.white.withOpacity(0.7),
                    child: Center(child: CircularProgressIndicator()),
                  ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: _bookmarks.isNotEmpty
          ? Container(
        color: Colors.blueGrey.shade50,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _bookmarks
                .map(
                  (page) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey),
                  onPressed: () {
                    _pdfController.jumpToPage(page);
                  },
                  child: Text("Page $page"),
                ),
              ),
            )
                .toList(),
          ),
        ),
      )
          : null,
    );
  }
}
