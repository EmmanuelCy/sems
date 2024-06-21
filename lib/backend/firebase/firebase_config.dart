import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC1FGmd0B--ukI4wenJTSP9aAEgcJHOkJY",
            authDomain: "sems-9at7ui.firebaseapp.com",
            projectId: "seas-9at7ui",
            storageBucket: "seas-9at7ui.appspot.com",
            messagingSenderId: "252908964586",
            appId: "1:252908964586:web:b1abac47c5fc7128aca593"));
  } else {
    await Firebase.initializeApp();
  }
}
