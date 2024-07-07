import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAf90KWl3u3G405Xi41rg_gQW_0mBosBkc",
            authDomain: "routebuddy-a229f.firebaseapp.com",
            projectId: "routebuddy-a229f",
            storageBucket: "routebuddy-a229f.appspot.com",
            messagingSenderId: "8788460348",
            appId: "1:8788460348:web:5242a1e04128f9c40d9439",
            measurementId: "G-9PDHE07552"));
  } else {
    await Firebase.initializeApp();
  }
}
