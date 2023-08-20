import 'package:flutter/material.dart';

class Project {
  final String? title, description, url;
  Project({this.url, this.description, this.title});
}

List<Project> demo_projects = [
  Project(
    url:"https://github.com/SankalpDhama/ExamHub",
      title: "ExamHub",
      description:
          " A dynamic exam preparation app, utilizing Flutter for a seamless multi-platform interface. Integrated Cloud Firestore for real-time data synchronization, enabling users to access up-to-date study materials. Implemented Firebase Realtime Database for interactive user feedback and ensured data security with Firebase Authentication. Streamlined content sharing through Firebase Cloud Storage. Enabled offline access using Flutter's local data storage and Firebase Cloud Storage. Optimized scalability and reliability through Firebase's robust infrastructure. Transformed exam preparation through innovative technology, providing students with an efficient and engaging learning platform."),
  Project(
    url: 'https://github.com/SankalpDhama/CineInsight',
      title: "CineInsight",
      description:
          "An innovative app merging Flutter and API tech. Delivers real-time movie/series descriptions, ratings, and personalized recommendations. Utilizes Flutter's UI toolkit for cross-platform elegance. Integrates APIs for dynamic data retrieval. Employs algorithms for tailored suggestions. Enables interactive user ratings/reviews. Designs responsive layouts for diverse devices. Elevates entertainment discovery with data-rich, user-friendly experience."),
  Project(
    url: 'https://github.com/SankalpDhama/Videofy',
      title: "VideoFy",
      description:
          "Pioneered the creation of a cutting-edge Flutter application, leveraging Google authentication for efficient user access.Integrated Jitsi Meet package to empower real-time video calls, facilitating dynamic interactions in both 1-to-1 and group scenarios.Elevated user engagement via an interactive chat feature, fostering seamless communication among a community of 50+ users.Engineered Firebase Firestore to proficiently manage and store 20+ video call logs and timestamps, enhancing data-driven insights for users."),
  Project(
    url: 'https://github.com/SankalpDhama/NotesNest',
      title: "NoteNest",
      description:
          "A real-time note-taking app seamlessly integrating Flutter and Firebase. Designed an intuitive Flutter UI for cross-device usability. Employed Firebase Firestore to synchronize notes in real time, enhancing productivity. Implemented secure Firebase Authentication for user profiles. Streamlined note creation with user-friendly interfaces. Leveraged Firebase Cloud Storage for attachments, promoting diverse content. NoteNest exemplifies my ability to merge Flutter's UI capabilities with Firebase's real-time features, delivering an efficient, collaborative, and secure note-taking experience for users on the go"),
];
