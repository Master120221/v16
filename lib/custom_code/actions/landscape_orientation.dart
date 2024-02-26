// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart'; // Import the necessary package

Future<void> landscapeOrientation() async {
  try {
    // Set landscape orientation on page load
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    print('Orientation set to landscape');
  } catch (e) {
    print('Error setting orientation: $e');
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Orientation Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Call the function to set landscape orientation
              landscapeOrientation();
            },
            child: Text('Set Landscape Orientation'),
          ),
        ),
      ),
    );
  }
}
