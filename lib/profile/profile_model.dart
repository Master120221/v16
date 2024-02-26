import '/components/profile_option_card_with_arrow_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ProfileOptionCardWithArrow component.
  late ProfileOptionCardWithArrowModel profileOptionCardWithArrowModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    profileOptionCardWithArrowModel =
        createModel(context, () => ProfileOptionCardWithArrowModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    profileOptionCardWithArrowModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
