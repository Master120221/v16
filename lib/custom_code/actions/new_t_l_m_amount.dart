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

Future newTLMAmount() async {
  // create a code that will subtract current user's TLM amount from the requested cashout amount
// Assuming the current user's TLM amount and requested cashout amount are stored in variables

  double currentUserTLM = 100.0;
  double requestedCashout = 50.0;

// Subtracting the requested cashout amount from the current user's TLM amount

  double newTLM = currentUserTLM - requestedCashout;

// Returning the new TLM amount as a Future

  return Future.value(newTLM);
}
