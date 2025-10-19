# Read_Lead

## 📘 Project Management Standards Comparison & Process Tailoring App

A cross-platform **Flutter application** that consolidates globally recognized **project management standards** — **PMBOK 7th Edition**, **PRINCE2 (2023)**, and **ISO 21500/21502** — into a unified digital solution for exploring, comparing, and tailoring processes for different project scenarios.

---

## 🧩 Project Overview

Organizations often struggle to select the right project management standard for their unique context.  
This app solves that by:

- Allowing users to **search and navigate** the full text of multiple standards.
- Providing **side-by-side comparisons** with deep linking to exact sections.
- Automatically generating **customized process proposals** for various project types.

This is the **Phase 2** extension of the assignment — expanding from comparison (Phase 1) to process tailoring and report generation.

---

## 🎯 Objectives

- Build a digital repository of major project management standards (PMBOK, PRINCE2, ISO).
- Implement an intelligent comparison engine for topic-level insights.
- Generate **tailored project processes** for three project scenarios:
  1. **Custom Software Development Project**
  2. **Innovative Product Development Project**
  3. **Large Government Project**

Each process includes:
- Detailed phases, activities, roles, and deliverables.
- Citations to referenced standards with page numbers.
- Workflow diagrams and downloadable reports.

---

## 📱 Features

| Feature | Description |
|----------|--------------|
| **Standards Repository** | Browse and search within PMBOK, PRINCE2, and ISO documents. |
| **Comparison Engine** | View similarities, differences, and unique points across standards. |
| **Process Generator** | Auto-generate end-to-end tailored processes for different project contexts. |
| **Process Diagrams** | Visual workflow of each proposed process (Graphviz-based). |
| **Download Reports** | Export each tailored process as a formatted DOCX or PDF report. |
| **Deep Linking** | Open the exact cited section inside a standard’s PDF with highlighting. |
| **Modern UI** | Clean Flutter interface using Material 3 with adaptive navigation and themes. |

---

## 🏗️ Architecture

```
lib/
 ├── main.dart
 ├── screens/
 │    ├── home_screen.dart
 │    ├── comparison_screen.dart
 │    ├── process_screen.dart
 │    └── report_viewer.dart
 ├── data/
 │    ├── process_custom.dart
 │    ├── process_innovative.dart
 │    └── process_government.dart
 ├── widgets/
 │    ├── download_fab.dart
 │    ├── diagram_button.dart
 │    └── custom_card.dart
 └── assets/
      ├── pdfs/
      ├── reports/
      └── diagrams/
```

---

## 🧠 Technology Stack

| Component | Technology |
|------------|-------------|
| **Framework** | Flutter 3.24+ |
| **Language** | Dart |
| **Backend/Logic** | Python (Google Colab, Phase 2 document generation) |
| **UI Toolkit** | Material Design 3 |
| **PDF Rendering** | pdfx |
| **File Handling** | path_provider, permission_handler |
| **Report Generation** | Python docx & graphviz scripts |
| **Version Control** | Git + GitHub |

---

## ⚙️ How to Run the App

### 1. Clone the repository
```bash
git clone https://github.com/your-username/project-standards-app.git
cd project-standards-app
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Run on emulator or device
```bash
flutter run
```

### 4. Build release APK
```bash
flutter build apk --release
```

Output: `build/app/outputs/flutter-apk/app-release.apk`

---

## 👩‍💻 Team & Credits

**Developed by:**  
_Group Name / Team Members_

**Guided by:**  
_Course Instructor / Supervisor_

---

## 📚 References

- PMBOK® Guide – Seventh Edition  
- PRINCE2® (2023) by Andy Murray  
- ISO 21500:2021 & ISO 21502:2020 – Project Management Standards

---

## 🏁 License
This project is for academic and educational purposes.  
All referenced materials (PMBOK, PRINCE2, ISO) remain © their respective organizations.
