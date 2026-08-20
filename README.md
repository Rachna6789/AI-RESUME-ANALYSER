# AI Resume Analyser & Interview Coach

An AI-powered **Resume Analysis and Interview Preparation application** built with Flutter and Dart. The application helps users analyze their resumes, extract meaningful insights, identify areas for improvement, and prepare for interviews using AI-powered feedback.

## 🚀 Features

* 📄 **Resume Upload**

  * Upload resumes directly from the application.
  * Supports file selection using `file_picker`.

* 🤖 **AI-Powered Resume Analysis**

  * Extract and analyze resume content.
  * Generate AI-based feedback and recommendations.
  * Identify strengths and potential improvement areas.

* 📊 **Resume Metrics**

  * Analyze important resume characteristics.
  * Store and track resume analysis results.
  * Monitor improvements over multiple analyses.

* 🎯 **Interview Preparation**

  * AI-generated interview questions.
  * Personalized feedback based on the user's resume.
  * Helps users identify areas to improve before interviews.

* 🔐 **Authentication**

  * Firebase Authentication for secure user login and registration.

* ☁️ **Cloud Data Storage**

  * Firebase Realtime Database for storing user progress and resume-related metrics.

* 📱 **Cross-Platform Application**

  * Developed using Flutter and Dart.
  * Designed to run across multiple supported platforms.

## 🛠️ Tech Stack

### Frontend

* **Flutter**
* **Dart**
* **Provider**
* **XML**

### Backend & Cloud Services

* **Firebase Authentication**
* **Firebase Realtime Database**
* **Firebase Storage**

### APIs & AI

* **HTTP APIs**
* **Generative AI APIs**
* **AI-based Resume Parsing**
* **AI-powered Interview Feedback**

### Development Tools

* **Git**
* **GitHub**
* **Android Studio**
* **VS Code**

## 🏗️ System Architecture

```text
                    ┌─────────────────────────┐
                    │       Flutter App       │
                    │     Dart + Provider     │
                    └────────────┬────────────┘
                                 │
                     ┌───────────┴───────────┐
                     │                       │
                     ▼                       ▼
              Firebase Services        AI / HTTP APIs
                     │                       │
          ┌──────────┼──────────┐           │
          │          │          │           │
          ▼          ▼          ▼           ▼
       Auth      Realtime DB   Storage   Generative AI
          │          │          │           │
          └──────────┴──────────┴───────────┘
                                 │
                                 ▼
                      Resume Analysis &
                     Interview Feedback
```

## 📱 Application Workflow

```text
User
 │
 ▼
Register / Login
 │
 ▼
Upload Resume
 │
 ▼
Resume Processing
 │
 ▼
AI Resume Analysis
 │
 ├──► Resume Metrics
 │
 ├──► Strengths
 │
 ├──► Improvement Areas
 │
 └──► Recommendations
 │
 ▼
Interview Preparation
 │
 ▼
AI-Generated Questions
 │
 ▼
Personalized Feedback
 │
 ▼
Progress Tracking
```

## 📂 Project Structure

```text
AI-RESUME-ANALYSER/
│
├── lib/
│   ├── models/
│   ├── providers/
│   ├── screens/
│   ├── services/
│   ├── widgets/
│   └── main.dart
│
├── assets/
│
├── android/
├── ios/
├── web/
│
├── pubspec.yaml
├── firebase_options.dart
└── README.md
```

> The exact directory structure may vary depending on the implementation.

## ⚙️ Installation & Setup

### Prerequisites

Install the following before running the project:

* Flutter SDK
* Dart SDK
* Android Studio or VS Code
* Android SDK / emulator
* Git
* Firebase project

### 1. Clone the Repository

```bash
git clone https://github.com/Rachna6789/AI-RESUME-ANALYSER.git
cd AI-RESUME-ANALYSER
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Configure Firebase

Create a Firebase project and configure Firebase for the required platforms.

Enable:

* Firebase Authentication
* Firebase Realtime Database
* Firebase Storage

Configure the Firebase application using the appropriate Firebase configuration files.

### 4. Configure AI API

Add the required Generative AI API configuration according to the API service used by the application.

**Do not commit API keys or other sensitive credentials to GitHub.**

Use environment variables or a secure configuration mechanism where appropriate.

### 5. Run the Application

Check connected devices:

```bash
flutter devices
```

Run the application:

```bash
flutter run
```

## 🔐 Security

The application uses:

* Firebase Authentication for user authentication.
* Firebase security rules to control database and storage access.
* Secure API configuration for AI services.
* Protected user-specific resume and progress data.

Sensitive information should never be committed to the repository.

Recommended `.gitignore` entries:

```gitignore
.env
*.jks
*.keystore
google-services.json
GoogleService-Info.plist
```

> Firebase configuration requirements can vary by project and platform. Do not expose private service-account credentials or AI API keys.

## 🤖 AI Resume Analysis

The application integrates with Generative AI APIs to analyze resume content.

The analysis can provide information such as:

* Resume strengths
* Areas requiring improvement
* Skills identified from the resume
* Suggestions for better resume content
* General resume quality feedback
* Recommendations for improving job-readiness

## 🎯 Interview Coach

The Interview Coach feature uses the user's resume information to assist with interview preparation.

Potential functionality includes:

* Technical interview questions
* HR interview questions
* Resume-based questions
* Personalized preparation
* AI-generated feedback
* Progress tracking

## 📊 Progress Tracking

User-related metrics and progress can be stored using Firebase Realtime Database.

This allows the application to maintain information such as:

* Resume analysis results
* Interview preparation progress
* User performance metrics
* Previous analysis results

## 🔄 Application Data Flow

```text
Resume File
     │
     ▼
File Picker
     │
     ▼
Resume Content Extraction
     │
     ▼
HTTP / AI API
     │
     ▼
Generative AI Processing
     │
     ▼
Analysis Result
     │
     ├──────────────► Display in Flutter UI
     │
     └──────────────► Store Relevant Metrics
                            │
                            ▼
                     Firebase Database
```

## 📚 Key Concepts Used

This project demonstrates practical implementation of:

* Flutter application development
* Dart programming
* Provider state management
* Firebase Authentication
* Firebase Realtime Database
* Firebase Storage
* File handling
* HTTP API integration
* Generative AI API integration
* Resume parsing
* JSON/API response handling
* Cross-platform application development
* Git and GitHub

## 🔮 Future Enhancements

* ATS compatibility scoring.
* Job-description vs. resume matching.
* Keyword optimization.
* Multiple resume version management.
* Job-specific resume recommendations.
* Mock interview with conversational AI.
* Voice-based interview practice.
* Interview performance analytics.
* LinkedIn profile analysis.
* Personalized career recommendations.
* Resume templates and formatting suggestions.
* Automated job-role recommendations.

## 🎯 Learning Outcomes

Through this project, the following skills and technologies were practiced:

* Building cross-platform applications with Flutter.
* Managing application state using Provider.
* Integrating Firebase services.
* Working with file uploads and document processing.
* Integrating external REST/HTTP APIs.
* Integrating Generative AI capabilities.
* Designing AI-assisted user workflows.
* Storing and retrieving user-specific data.
* Building an end-to-end AI-powered application.

## 👩‍💻 Author

**Rachna Galipelli**

GitHub:
https://github.com/Rachna6789

## 📄 License

This project is intended for **educational and portfolio purposes**.
