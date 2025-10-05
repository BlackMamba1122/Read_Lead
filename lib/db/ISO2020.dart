import 'package:Read_Lead/db/topic.dart';

final List<Topic> ISO2020Topics = [
  Topic(name: "1. Scope", startPage: 9),
  Topic(name: "2. Normative references", startPage: 9),
  Topic(name: "3. Terms and definitions", startPage: 9),
  Topic(
    name: "4. Project management concepts",
    startPage: 12,
    subTopics: [
      Topic(
        name: "4.1 Overview",
        startPage: 12,
        subTopics: [
          Topic(name: "4.1.1 General", startPage: 12),
          Topic(name: "4.1.2 Projects", startPage: 13),
          Topic(name: "4.1.3 Project management", startPage: 14),
        ],
      ),
      Topic(
        name: "4.2 Context",
        startPage: 14,
        subTopics: [
          Topic(name: "4.2.1 Impact of a project’s context", startPage: 14),
          Topic(name: "4.2.2 Organizational strategy and projects", startPage: 14),
          Topic(name: "4.2.3 Customer and supplier perspective", startPage: 15),
          Topic(name: "4.2.4 Project constraints", startPage: 16),
          Topic(name: "4.2.5 Projects as stand-alone, part of a programme or portfolio", startPage: 16),
        ],
      ),
      Topic(
        name: "4.3 Project governance",
        startPage: 17,
        subTopics: [
          Topic(name: "4.3.1 Governance framework", startPage: 17),
          Topic(name: "4.3.2 Business case", startPage: 17),
        ],
      ),
      Topic(name: "4.4 Project life cycle", startPage: 17),
      Topic(
        name: "4.5 Project organization and roles",
        startPage: 18,
        subTopics: [
          Topic(name: "4.5.1 Project organization", startPage: 18),
          Topic(name: "4.5.2 Sponsoring organization", startPage: 20),
          Topic(name: "4.5.3 Project board", startPage: 20),
          Topic(name: "4.5.4 Project sponsor", startPage: 20),
          Topic(name: "4.5.5 Project assurance", startPage: 21),
          Topic(name: "4.5.6 Project manager", startPage: 21),
          Topic(name: "4.5.7 Project office", startPage: 22),
          Topic(name: "4.5.8 Work package leader", startPage: 22),
          Topic(name: "4.5.9 Project team members", startPage: 22),
          Topic(name: "4.5.10 Project stakeholders", startPage: 23),
          Topic(name: "4.5.11 Other roles", startPage: 23),
        ],
      ),
      Topic(name: "4.6 Competencies of project personnel", startPage: 23),
    ],
  ),
  Topic(
    name: "5. Prerequisites for formalizing project management",
    startPage: 24,
    subTopics: [
      Topic(name: "5.1 Overview", startPage: 24),
      Topic(name: "5.2 Considerations for implementing project management", startPage: 24),
      Topic(name: "5.3 Continuous improvement of the project management environment", startPage: 24),
      Topic(name: "5.4 Alignment with organizational processes and systems", startPage: 25),
    ],
  ),
  Topic(
    name: "6. Integrated project management practices",
    startPage: 26,
    subTopics: [
      Topic(name: "6.1 Overview", startPage: 26),
      Topic(name: "6.2 Pre-project activities", startPage: 27),
      Topic(name: "6.3 Overseeing a project", startPage: 28),
      Topic(name: "6.4 Directing a project", startPage: 28),
      Topic(
        name: "6.5 Initiating a project",
        startPage: 29,
        subTopics: [
          Topic(name: "6.5.1 Overview", startPage: 29),
          Topic(name: "6.5.2 Project team mobilization", startPage: 29),
          Topic(name: "6.5.3 Project governance and management approach", startPage: 29),
          Topic(name: "6.5.4 Initial project justification", startPage: 29),
          Topic(name: "6.5.5 Initial project planning", startPage: 30),
        ],
      ),
      Topic(
        name: "6.6 Controlling a project",
        startPage: 30,
        subTopics: [
          Topic(name: "6.6.1 Overview", startPage: 30),
          Topic(name: "6.6.2 Progressive justification", startPage: 30),
          Topic(name: "6.6.3 Managing project performance", startPage: 30),
          Topic(name: "6.6.4 Managing the start and close of each project phase", startPage: 31),
          Topic(name: "6.6.5 Managing the start, progress and close of each work package", startPage: 32),
        ],
      ),
      Topic(name: "6.7 Managing delivery", startPage: 32),
      Topic(name: "6.8 Closing or terminating a project", startPage: 33),
      Topic(name: "6.9 Post-project activities", startPage: 34),
    ],
  ),
  Topic(
    name: "7. Management practices for a project",
    startPage: 34,
    subTopics: [
      Topic(name: "7.1 Overview", startPage: 34),
      Topic(
        name: "7.2 Planning",
        startPage: 35,
        subTopics: [
          Topic(name: "7.2.1 Overview", startPage: 35),
          Topic(name: "7.2.2 Developing the plan", startPage: 36),
          Topic(name: "7.2.3 Monitoring the plan", startPage: 36),
        ],
      ),
      Topic(
        name: "7.3 Benefit management",
        startPage: 36,
        subTopics: [
          Topic(name: "7.3.1 Overview", startPage: 36),
          Topic(name: "7.3.2 Identifying and analysing benefits", startPage: 36),
          Topic(name: "7.3.3 Monitoring benefits", startPage: 37),
          Topic(name: "7.3.4 Maintaining benefits", startPage: 37),
        ],
      ),
      Topic(
        name: "7.4 Scope management",
        startPage: 37,
        subTopics: [
          Topic(name: "7.4.1 Overview", startPage: 37),
          Topic(name: "7.4.2 Defining the scope", startPage: 38),
          Topic(name: "7.4.3 Controlling the scope", startPage: 38),
          Topic(name: "7.4.4 Confirming scope delivery", startPage: 38),
        ],
      ),
      Topic(
        name: "7.5 Resources management",
        startPage: 38,
        subTopics: [
          Topic(name: "7.5.1 Overview", startPage: 38),
          Topic(name: "7.5.2 Planning the project organization", startPage: 39),
          Topic(name: "7.5.3 Establishing the team", startPage: 39),
          Topic(name: "7.5.4 Developing the team", startPage: 39),
          Topic(name: "7.5.5 Managing the team", startPage: 39),
          Topic(name: "7.5.6 Planning, managing and controlling resources", startPage: 40),
        ],
      ),
      Topic(
        name: "7.6 Schedule management",
        startPage: 40,
        subTopics: [
          Topic(name: "7.6.1 Overview", startPage: 40),
          Topic(name: "7.6.2 Estimating activity durations", startPage: 40),
          Topic(name: "7.6.3 Developing the schedule", startPage: 41),
          Topic(name: "7.6.4 Controlling the schedule", startPage: 41),
        ],
      ),
      Topic(
        name: "7.7 Cost management",
        startPage: 41,
        subTopics: [
          Topic(name: "7.7.1 Overview", startPage: 41),
          Topic(name: "7.7.2 Estimating cost", startPage: 42),
          Topic(name: "7.7.3 Developing the budget", startPage: 42),
          Topic(name: "7.7.4 Controlling costs", startPage: 42),
        ],
      ),
      Topic(
        name: "7.8 Risk management",
        startPage: 42,
        subTopics: [
          Topic(name: "7.8.1 Overview", startPage: 42),
          Topic(name: "7.8.2 Identifying risk", startPage: 43),
          Topic(name: "7.8.3 Assessing risk", startPage: 43),
          Topic(name: "7.8.4 Treating risk", startPage: 43),
          Topic(name: "7.8.5 Controlling risk", startPage: 43),
        ],
      ),
      Topic(
        name: "7.9 Issues management",
        startPage: 43,
        subTopics: [
          Topic(name: "7.9.1 Overview", startPage: 43),
          Topic(name: "7.9.2 Identifying issues", startPage: 44),
          Topic(name: "7.9.3 Resolving issues", startPage: 44),
        ],
      ),
      Topic(
        name: "7.10 Change control",
        startPage: 44,
        subTopics: [
          Topic(name: "7.10.1 Overview", startPage: 44),
          Topic(name: "7.10.2 Establishing a change control framework", startPage: 45),
          Topic(name: "7.10.3 Identifying and assessing change requests", startPage: 45),
          Topic(name: "7.10.4 Planning implementation of change requests", startPage: 45),
          Topic(name: "7.10.5 Implementing and closing change requests", startPage: 45),
        ],
      ),
      Topic(
        name: "7.11 Quality management",
        startPage: 45,
        subTopics: [
          Topic(name: "7.11.1 Overview", startPage: 45),
          Topic(name: "7.11.2 Planning quality", startPage: 46),
          Topic(name: "7.11.3 Assuring quality", startPage: 46),
          Topic(name: "7.11.4 Controlling quality", startPage: 46),
        ],
      ),
      Topic(
        name: "7.12 Stakeholder engagement",
        startPage: 47,
        subTopics: [
          Topic(name: "7.12.1 Overview", startPage: 47),
          Topic(name: "7.12.2 Identifying stakeholders", startPage: 47),
          Topic(name: "7.12.3 Engaging stakeholders", startPage: 48),
        ],
      ),
      Topic(
        name: "7.13 Communication management",
        startPage: 48,
        subTopics: [
          Topic(name: "7.13.1 Overview", startPage: 48),
          Topic(name: "7.13.2 Planning communication", startPage: 48),
          Topic(name: "7.13.3 Distributing information", startPage: 48),
          Topic(name: "7.13.4 Monitoring impact of communications", startPage: 49),
        ],
      ),
      Topic(
        name: "7.14 Managing organizational and societal change",
        startPage: 49,
        subTopics: [
          Topic(name: "7.14.1 Overview", startPage: 49),
          Topic(name: "7.14.2 Identifying the need for change", startPage: 49),
          Topic(name: "7.14.3 Implementing the organizational and societal change", startPage: 50),
        ],
      ),
      Topic(
        name: "7.15 Reporting",
        startPage: 50,
        subTopics: [
          Topic(name: "7.15.1 Overview", startPage: 50),
          Topic(name: "7.15.2 Planning reporting", startPage: 50),
          Topic(name: "7.15.3 Managing reporting", startPage: 50),
          Topic(name: "7.15.4 Delivering reports", startPage: 50),
        ],
      ),
      Topic(
        name: "7.16 Information and documentation management",
        startPage: 51,
        subTopics: [
          Topic(name: "7.16.1 Overview", startPage: 51),
          Topic(name: "7.16.2 Identifying which information should be managed", startPage: 51),
          Topic(name: "7.16.3 Storing and retrieving information and documentation", startPage: 51),
        ],
      ),
      Topic(
        name: "7.17 Procurement",
        startPage: 51,
        subTopics: [
          Topic(name: "7.17.1 Overview", startPage: 51),
          Topic(name: "7.17.2 Planning procurement", startPage: 51),
          Topic(name: "7.17.3 Evaluating and selecting suppliers", startPage: 52),
          Topic(name: "7.17.4 Administering contracts", startPage: 52),
          Topic(name: "7.17.5 Closing contracts", startPage: 52),
        ],
      ),
      Topic(
        name: "7.18 Lessons learned",
        startPage: 52,
        subTopics: [
          Topic(name: "7.18.1 Overview", startPage: 52),
          Topic(name: "7.18.2 Identifying lessons", startPage: 53),
          Topic(name: "7.18.3 Disseminating lessons", startPage: 53),
        ],
      ),
    ],
  ),
  Topic(name: "Annex A (informative) Project management processes based on practices", startPage: 55),
  Topic(name: "Bibliography", startPage: 60),
];
