import '/backend/supabase/supabase.dart';
import '/components/nav_bar_widget.dart';
import '/components/topbuttons_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int? needsWater = 2;

  int? needsWater2 = 2;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Insert Row] action in Image widget.
  LogRow? addedDateLog;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Image widget.
  List<LogRow>? deletedDateLog;
  // Stores action output result for [Backend Call - Insert Row] action in Image widget.
  LogRow? addedDateLog2;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Image widget.
  List<LogRow>? deletedDateLog2;
  // Model for topbuttons component.
  late TopbuttonsModel topbuttonsModel;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    topbuttonsModel = createModel(context, () => TopbuttonsModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    topbuttonsModel.dispose();
    navBarModel.dispose();
  }
}
