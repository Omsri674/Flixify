import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBi02SxE6OeRFGRkPSVuOESLdKqJCtB2pI",
            authDomain: "o-t-ts.firebaseapp.com",
            projectId: "o-t-ts",
            storageBucket: "o-t-ts.appspot.com",
            messagingSenderId: "735808318384",
            appId: "1:735808318384:web:f9aafb01a7baf90b290475"));
  } else {
    await Firebase.initializeApp();
  }
}
