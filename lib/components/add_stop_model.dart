import '/flutter_flow/flutter_flow_util.dart';
import 'add_stop_widget.dart' show AddStopWidget;
import 'package:flutter/material.dart';

class AddStopModel extends FlutterFlowModel<AddStopWidget> {
  ///  Local state fields for this component.

  int? photoNumber;

  ///  State fields for stateful widgets in this component.

  // State field(s) for CustomerName widget.
  FocusNode? customerNameFocusNode;
  TextEditingController? customerNameTextController;
  String? Function(BuildContext, String?)? customerNameTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    customerNameFocusNode?.dispose();
    customerNameTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();
  }
}
