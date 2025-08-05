import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/top_back_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'add_log_widget.dart' show AddLogWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddLogModel extends FlutterFlowModel<AddLogWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topBack component.
  late TopBackModel topBackModel;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  LogRow? logAdded;

  @override
  void initState(BuildContext context) {
    topBackModel = createModel(context, () => TopBackModel());
  }

  @override
  void dispose() {
    topBackModel.dispose();
  }
}
