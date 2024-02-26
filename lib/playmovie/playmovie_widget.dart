import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'playmovie_model.dart';
export 'playmovie_model.dart';

class PlaymovieWidget extends StatefulWidget {
  const PlaymovieWidget({
    super.key,
    this.movies1,
    this.popular,
    required this.trendy,
  });

  final AllmoviesRow? movies1;
  final PopularRow? popular;
  final TrendyRow? trendy;

  @override
  State<PlaymovieWidget> createState() => _PlaymovieWidgetState();
}

class _PlaymovieWidgetState extends State<PlaymovieWidget> {
  late PlaymovieModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaymovieModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF080101),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ),
            child: FlutterFlowWebView(
              content: widget.trendy!.movieLink1!,
              bypass: false,
              width: 852.0,
              height: 393.0,
              verticalScroll: false,
              horizontalScroll: false,
            ),
          ),
        ),
      ),
    );
  }
}
