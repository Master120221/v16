// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class EmbedVideoPlayer extends StatefulWidget {
  const EmbedVideoPlayer({
    super.key,
    this.width,
    this.height,
    this.videoUrl,
  });

  final double? width;
  final double? height;
  final String? videoUrl;

  @override
  State<EmbedVideoPlayer> createState() => _EmbedVideoPlayerState();
}

class _EmbedVideoPlayerState extends State<EmbedVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
