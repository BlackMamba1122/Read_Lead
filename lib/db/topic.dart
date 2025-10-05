import 'package:Read_Lead/db/ISO2020.dart';
import 'package:Read_Lead/db/ISO2021.dart';
import 'package:Read_Lead/db/PMBOK.dart';
import 'package:Read_Lead/db/PMI.dart';
import 'package:Read_Lead/db/PRINCE2.dart';

class Topic {
  final String name;
  final int startPage;
  final List<Topic> subTopics;

  Topic({
    required this.name,
    required this.startPage,
    this.subTopics = const [],
  });
}

class BookTopic {
  final String id;
  final List<Topic> topics;

  BookTopic({
    required this.id,
    required this.topics
  });
}

final List<BookTopic> booksTopic = [
  BookTopic(id: '001', topics: PMBOKTopics),
  BookTopic(id: '004', topics: PMITopics),
  BookTopic(id: '005', topics: PRINCE2Topics),
  BookTopic(id: '002', topics: ISO2020Topics),
  BookTopic(id: '003', topics: ISO2021Topics),
];