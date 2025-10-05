import 'package:Read_Lead/db/topic.dart';

final List<Topic> ISO2021Topics = [
  Topic(name: "1. Scope", startPage: 7),
  Topic(name: "2. Normative references", startPage: 7),
  Topic(name: "3. Terms and definitions", startPage: 7),
  Topic(
    name: "4. Project, programme and portfolio management concepts",
    startPage: 9,
    subTopics: [
      Topic(name: "4.1 General", startPage: 9),
      Topic(name: "4.2 Projects, programmes and portfolios", startPage: 10),
      Topic(name: "4.3 Organizational environment", startPage: 11),
      Topic(name: "4.4 External environment", startPage: 11),
      Topic(name: "4.5 Strategy implementation", startPage: 12),
      Topic(name: "4.6 Integrated governance and management approaches", startPage: 13),
    ],
  ),
  Topic(
    name: "5. Standards on project, programme and portfolio management",
    startPage: 14,
    subTopics: [
      Topic(name: "5.1 General", startPage: 14),
      Topic(name: "5.2 Overview", startPage: 15, subTopics: [
        Topic(name: "5.2.1 Core standards", startPage: 15),
        Topic(name: "5.2.2 Supporting standards and vocabulary", startPage: 15),
      ]),
      Topic(
        name: "5.3 Benefits of using standards on project, programme and portfolio management",
        startPage: 16,
        subTopics: [
          Topic(name: "5.3.1 General", startPage: 16),
          Topic(name: "5.3.2 Project management", startPage: 16),
          Topic(name: "5.3.3 Programme management", startPage: 16),
          Topic(name: "5.3.4 Portfolio management", startPage: 16),
          Topic(name: "5.3.5 Governance", startPage: 17),
        ],
      ),
      Topic(name: "5.4 Organizational considerations for selection", startPage: 17),
    ],
  ),
  Topic(name: "Bibliography", startPage: 18),
];
