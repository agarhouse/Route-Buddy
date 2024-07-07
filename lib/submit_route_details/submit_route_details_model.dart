import '/flutter_flow/flutter_flow_util.dart';
import 'submit_route_details_widget.dart' show SubmitRouteDetailsWidget;
import 'package:flutter/material.dart';

class SubmitRouteDetailsModel
    extends FlutterFlowModel<SubmitRouteDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RouteName widget.
  FocusNode? routeNameFocusNode;
  TextEditingController? routeNameTextController;
  String? Function(BuildContext, String?)? routeNameTextControllerValidator;
  // State field(s) for RouteCompanyName widget.
  FocusNode? routeCompanyNameFocusNode;
  TextEditingController? routeCompanyNameTextController;
  String? Function(BuildContext, String?)?
      routeCompanyNameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    routeNameFocusNode?.dispose();
    routeNameTextController?.dispose();

    routeCompanyNameFocusNode?.dispose();
    routeCompanyNameTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
