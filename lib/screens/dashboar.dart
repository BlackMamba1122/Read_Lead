import 'package:flutter/material.dart';
import 'package:Read_Lead/screens/topiclist.dart';
import 'book_selector.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Set<int> selectedBooks = {};

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 4,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          title: const Text(
            "Insights Dashboard",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.blueAccent,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(icon: Icon(Icons.compare_arrows), text: "Similarities"),
              Tab(icon: Icon(Icons.compare), text: "Differences"),
              Tab(icon: Icon(Icons.lightbulb_outline), text: "Unique"),
            ],
          ),
        ),
        body: Column(
          children: [
            // Book selector section with nice card
            Card(
              margin: const EdgeInsets.all(12),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: BookSelector(
                  onSelectionChanged: (books) {
                    setState(() => selectedBooks = books);
                  },
                ),
              ),
            ),

            // Tab contents
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TabBarView(
                  children: [
                    TopicListView(
                        type: "Similarities", selectedBooks: selectedBooks),
                    TopicListView(
                        type: "Differences", selectedBooks: selectedBooks),
                    TopicListView(
                        type: "Unique", selectedBooks: selectedBooks),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
