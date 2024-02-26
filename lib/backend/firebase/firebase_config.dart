import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCiTkDyEgC_avNXXVer1jiV3RNIqVL8BxE",
            authDomain: "momuflix-zso87k.firebaseapp.com",
            projectId: "momuflix-zso87k",
            storageBucket: "momuflix-zso87k.appspot.com",
            messagingSenderId: "348975823657",
            appId: "1:348975823657:web:c796c676f2d28ce9e01538"));
  } else {
    await Firebase.initializeApp();
  }
}
