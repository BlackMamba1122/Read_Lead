import 'package:Read_Lead/db/topic.dart';

final List<Topic> PMBOKTopics = [
  Topic(name: "THE STANDARD FOR PROJECT MANAGEMENT", startPage: 28),
  Topic(
    name: "1. INTRODUCTION",
    startPage: 30,
    subTopics: [
      Topic(name: "1.1 Purpose of The Standard for Project Management", startPage: 30),
      Topic(name: "1.2 Key Terms and Concepts", startPage: 31),
      Topic(name: "1.3 Audience for this Standard", startPage: 32),
    ],
  ),
  Topic(
    name: "2. A SYSTEM FOR VALUE DELIVERY",
    startPage: 33,
    subTopics: [
      Topic(name: "2.1 Creating Value", startPage: 33, subTopics: [
        Topic(name: "2.1.1 Value Delivery Components", startPage: 34),
        Topic(name: "2.1.2 Information Flow", startPage: 36),
      ]),
      Topic(name: "2.2 Organizational Governance Systems", startPage: 36),
      Topic(
        name: "2.3 Functions Associated with Projects",
        startPage: 37,
        subTopics: [
          Topic(name: "2.3.1 Provide Oversight and Coordination", startPage: 37),
          Topic(name: "2.3.2 Present Objectives and Feedback", startPage: 38),
          Topic(name: "2.3.3 Facilitate and Support", startPage: 38),
          Topic(name: "2.3.4 Perform Work and Contribute Insights", startPage: 39),
          Topic(name: "2.3.5 Apply Expertise", startPage: 39),
          Topic(name: "2.3.6 Provide Business Direction and Insight", startPage: 39),
          Topic(name: "2.3.7 Provide Resources and Direction", startPage: 40),
          Topic(name: "2.3.8 Maintain Governance", startPage: 40),
        ],
      ),
      Topic(
        name: "2.4 The Project Environment",
        startPage: 40,
        subTopics: [
          Topic(name: "2.4.1 Internal Environment", startPage: 40),
          Topic(name: "2.4.2 External Environment", startPage: 42),
        ],
      ),
      Topic(name: "2.5 Product Management Considerations", startPage: 42),
    ],
  ),
  Topic(
    name: "3. PROJECT MANAGEMENT PRINCIPLES",
    startPage: 45,
    subTopics: [
      Topic(name: "3.1 Be a Diligent, Respectful, and Caring Steward", startPage: 47),
      Topic(name: "3.2 Create a Collaborative Project Team Environment", startPage: 50),
      Topic(name: "3.3 Effectively Engage with Stakeholders", startPage: 52),
      Topic(name: "3.4 Focus on Value", startPage: 55),
      Topic(name: "3.5 Recognize, Evaluate, and Respond to System Interactions", startPage: 57),
      Topic(name: "3.6 Demonstrate Leadership Behaviors", startPage: 60),
      Topic(name: "3.7 Tailor Based on Context", startPage: 64),
      Topic(name: "3.8 Build Quality into Processes and Deliverables", startPage: 67),
      Topic(name: "3.9 Navigate Complexity", startPage: 69),
      Topic(name: "3.10 Optimize Risk Responses", startPage: 72),
      Topic(name: "3.11 Embrace Adaptability and Resiliency", startPage: 74),
      Topic(name: "3.12 Enable Change to Achieve the Envisioned Future State", startPage: 76),
    ],
  ),
  Topic(name: "References", startPage: 78),
  Topic(
    name: "A GUIDE TO THE PROJECT MANAGEMENT BODY OF KNOWLEDGE (PMBOK® GUIDE)",
    startPage: 79,
    subTopics: [
      Topic(
        name: "1. INTRODUCTION",
        startPage: 81,
        subTopics: [
          Topic(name: "1.1 Structure of the PMBOK® Guide", startPage: 81),
          Topic(name: "1.2 Relationship of the PMBOK® Guide and The Standard for Project Management", startPage: 82),
          Topic(name: "1.3 Changes to the PMBOK® Guide", startPage: 84),
          Topic(name: "1.4 Relationship to PMIstandards+", startPage: 84),
        ],
      ),
      Topic(
        name: "2. PROJECT PERFORMANCE DOMAINS",
        startPage: 86,
        subTopics: [
          Topic(
            name: "2.1 Stakeholder Performance Domain",
            startPage: 87,
            subTopics: [
              Topic(name: "2.1.1 Stakeholder Engagement", startPage: 89),
              Topic(name: "2.1.2 Interactions with Other Performance Domains", startPage: 93),
              Topic(name: "2.1.3 Checking Results", startPage: 93),
            ],
          ),
          Topic(
            name: "2.2 Team Performance Domain",
            startPage: 94,
            subTopics: [
              Topic(name: "2.2.1 Project Team Management and Leadership", startPage: 95),
              Topic(name: "2.2.2 Project Team Culture", startPage: 97),
              Topic(name: "2.2.3 High-Performing Project Teams", startPage: 99),
              Topic(name: "2.2.4 Leadership Skills", startPage: 100),
              Topic(name: "2.2.5 Tailoring Leadership Styles", startPage: 106),
              Topic(name: "2.2.6 Interactions with Other Performance Domains", startPage: 106),
              Topic(name: "2.2.7 Checking Results", startPage: 107),
            ],
          ),
          Topic(
            name: "2.3 Development Approach and Life Cycle Performance Domain",
            startPage: 107,
            subTopics: [
              Topic(name: "2.3.1 Development, Cadence, and Life Cycle Relationship", startPage: 108),
              Topic(name: "2.3.2 Delivery Cadence", startPage: 108),
              Topic(name: "2.3.3 Development Approaches", startPage: 109),
              Topic(name: "2.3.4 Considerations for Selecting a Development Approach", startPage: 113),
              Topic(name: "2.3.5 Life Cycle and Phase Definitions", startPage: 116),
              Topic(name: "2.3.6 Aligning of Delivery Cadence, Development Approach, and Life Cycle", startPage: 120),
              Topic(name: "2.3.7 Interactions with Other Performance Domains", startPage: 123),
              Topic(name: "2.3.8 Measuring Outcomes", startPage: 124),
            ],
          ),
          Topic(
            name: "2.4 Planning Performance Domain",
            startPage: 124,
            subTopics: [
              Topic(name: "2.4.1 Planning Overview", startPage: 126),
              Topic(name: "2.4.2 Planning Variables", startPage: 126),
              Topic(name: "2.4.3 Project Team Composition and Structure", startPage: 136),
              Topic(name: "2.4.4 Communication", startPage: 137),
              Topic(name: "2.4.5 Physical Resources", startPage: 137),
              Topic(name: "2.4.6 Procurement", startPage: 138),
              Topic(name: "2.4.7 Changes", startPage: 138),
              Topic(name: "2.4.8 Metrics", startPage: 138),
              Topic(name: "2.4.9 Alignment", startPage: 139),
              Topic(name: "2.4.10 Interactions with Other Performance Domains", startPage: 139),
              Topic(name: "2.4.11 Checking Results", startPage: 140),
            ],
          ),
          Topic(
            name: "2.5 Project Work Performance Domain",
            startPage: 140,
            subTopics: [
              Topic(name: "2.5.1 Project Processes", startPage: 142),
              Topic(name: "2.5.2 Balancing Competing Constraints", startPage: 142),
              Topic(name: "2.5.3 Maintaining Project Team Focus", startPage: 143),
              Topic(name: "2.5.4 Project Communications and Engagement", startPage: 144),
              Topic(name: "2.5.5 Managing Physical Resources", startPage: 144),
              Topic(name: "2.5.6 Working with Procurements", startPage: 145),
              Topic(name: "2.5.7 Monitoring New Work and Changes", startPage: 146),
              Topic(name: "2.5.8 Learning throughout the Project", startPage: 147),
              Topic(name: "2.5.9 Interactions with Other Performance Domains", startPage: 148),
              Topic(name: "2.5.10 Checking Results", startPage: 148),
            ],
          ),
          Topic(
            name: "2.6 Delivery Performance Domain",
            startPage: 150,
            subTopics: [
              Topic(name: "2.6.1 Delivery of Value", startPage: 151),
              Topic(name: "2.6.2 Deliverables", startPage: 152),
              Topic(name: "2.6.3 Quality", startPage: 155),
              Topic(name: "2.6.4 Suboptimal Outcomes", startPage: 169),
              Topic(name: "2.6.5 Interactions with Other Performance Domains", startPage: 169),
              Topic(name: "2.6.6 Checking Results", startPage: 169),
            ],
          ),
          Topic(
            name: "2.7 Measurement Performance Domain",
            startPage: 160,
            subTopics: [
              Topic(name: "2.7.1 Establishing Effective Measures", startPage: 162),
              Topic(name: "2.7.2 What to Measure", startPage: 163),
              Topic(name: "2.7.3 Presenting Information", startPage: 171),
              Topic(name: "2.7.4 Measurement Pitfalls", startPage: 177),
              Topic(name: "2.7.5 Troubleshooting Performance", startPage: 178),
              Topic(name: "2.7.6 Growing and Improving", startPage: 179),
              Topic(name: "2.7.7 Interactions with Other Performance Domains", startPage: 179),
              Topic(name: "2.7.8 Checking Results", startPage: 180),
            ],
          ),
          Topic(
            name: "2.8 Uncertainty Performance Domain",
            startPage: 180,
            subTopics: [
              Topic(name: "2.8.1 General Uncertainty", startPage: 183),
              Topic(name: "2.8.2 Ambiguity", startPage: 183),
              Topic(name: "2.8.3 Complexity", startPage: 184),
              Topic(name: "2.8.4 Volatility", startPage: 185),
              Topic(name: "2.8.5 Risk", startPage: 186),
              Topic(name: "2.8.6 Interactions with Other Performance Domains", startPage: 191),
              Topic(name: "2.8.7 Checking Results", startPage: 191),
            ],
          ),
        ],
      ),
      Topic(
        name: "3. TAILORING",
        startPage: 193,
        subTopics: [
          Topic(name: "3.1 Overview", startPage: 193),
          Topic(name: "3.2 Why Tailor?", startPage: 194),
          Topic(name: "3.3 What to Tailor", startPage: 195, subTopics: [
            Topic(name: "3.3.1 Life Cycle and Development Approach Selection", startPage: 195),
            Topic(name: "3.3.2 Processes", startPage: 196),
            Topic(name: "3.3.3 Engagement", startPage: 196),
            Topic(name: "3.3.4 Tools", startPage: 197),
            Topic(name: "3.3.5 Methods and Artifacts", startPage: 197),
          ]),
          Topic(name: "3.4 The Tailoring Process", startPage: 197, subTopics: [
            Topic(name: "3.4.1 Select Initial Development Approach", startPage: 198),
            Topic(name: "3.4.2 Tailor for the Organization", startPage: 199),
            Topic(name: "3.4.3 Tailor for the Project", startPage: 201),
          ]),
          Topic(
            name: "3.5 Tailoring the Performance Domains",
            startPage: 204,
            subTopics: [
              Topic(name: "3.5.1 Stakeholders", startPage: 206),
              Topic(name: "3.5.2 Project Team", startPage: 206),
              Topic(name: "3.5.3 Development Approach and Life Cycle", startPage: 207),
              Topic(name: "3.5.4 Planning", startPage: 207),
              Topic(name: "3.5.5 Project Work", startPage: 208),
              Topic(name: "3.5.6 Delivery", startPage: 208),
              Topic(name: "3.5.7 Uncertainty", startPage: 209),
              Topic(name: "3.5.8 Measurement", startPage: 209),
            ],
          ),
          Topic(name: "3.6 Diagnostics", startPage: 209),
          Topic(name: "3.7 Summary", startPage: 210),
        ],
      ),
      Topic(
        name: "4. MODELS, METHODS, AND ARTIFACTS",
        startPage: 211,
        subTopics: [
          Topic(name: "4.1 Overview", startPage: 211),
          Topic(
            name: "4.2 Commonly Used Models",
            startPage: 213,
            subTopics: [
              Topic(name: "4.2.1 Situational Leadership Models", startPage: 214),
              Topic(name: "4.2.2 Communication Models", startPage: 215),
              Topic(name: "4.2.3 Motivation Models", startPage: 216),
              Topic(name: "4.2.4 Change Models", startPage: 218),
              Topic(name: "4.2.5 Complexity Models", startPage: 221),
              Topic(name: "4.2.6 Project Team Development Models", startPage: 223),
              Topic(name: "4.2.7 Other Models", startPage: 224),
            ],
          ),
          Topic(name: "4.3 Models Applied Across Performance Domains", startPage: 228),
          Topic(
            name: "4.4 Commonly Used Methods",
            startPage: 230,
            subTopics: [
              Topic(name: "4.4.1 Data Gathering and Analysis", startPage: 230),
              Topic(name: "4.4.2 Estimating", startPage: 234),
              Topic(name: "4.4.3 Meetings and Events", startPage: 235),
              Topic(name: "4.4.4 Other Methods", startPage: 236),
            ],
          ),
          Topic(name: "4.5 Methods Applied Across Performance Domains", startPage: 237),
          Topic(
            name: "4.6 Commonly Used Artifacts",
            startPage: 240,
            subTopics: [
              Topic(name: "4.6.1 Strategy Artifacts", startPage: 240),
              Topic(name: "4.6.2 Logs and Registers", startPage: 241),
              Topic(name: "4.6.3 Plans", startPage: 242),
              Topic(name: "4.6.4 Hierarchy Charts", startPage: 243),
              Topic(name: "4.6.5 Baselines", startPage: 244),
              Topic(name: "4.6.6 Visual Data and Information", startPage: 244),
              Topic(name: "4.6.7 Reports", startPage: 246),
              Topic(name: "4.6.8 Agreements and Contracts", startPage: 247),
              Topic(name: "4.6.9 Other Artifacts", startPage: 247),
            ],
          ),
          Topic(name: "4.7 Artifacts Applied Across Performance Domains", startPage: 248),
        ],
      ),
    ],
  ),
  Topic(name: "References", startPage: 252),
];














