import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCinmK4GTZhSrw9K1HAvXB9Fm4JsrCwMnw",
            authDomain: "finder-72844.firebaseapp.com",
            projectId: "finder-72844",
            storageBucket: "finder-72844.firebasestorage.app",
            messagingSenderId: "394976736560",
            appId: "1:394976736560:web:f6b410222598a1542ec4f5",
            measurementId: "G-NKXK8RX5JM"));
  } else {
    await Firebase.initializeApp();
  }
}
