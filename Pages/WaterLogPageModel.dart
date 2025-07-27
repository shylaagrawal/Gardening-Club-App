import '/backend/supabase/supabase.dart';
import '/components/nav_bar_widget.dart';
import '/components/topbuttons_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'water_log_page_widget.dart' show WaterLogPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WaterLogPageModel extends FlutterFlowModel<WaterLogPageWidget> {
  ///  Local state fields for this page.

  List<LogRow> dataTable = [];
  void addToDataTable(LogRow item) => dataTable.add(item);
  void removeFromDataTable(LogRow item) => dataTable.remove(item);
  void removeAtIndexFromDataTable(int index) => dataTable.removeAt(index);
  void insertAtIndexInDataTable(int index, LogRow item) =>
      dataTable.insert(index, item);
  void updateDataTableAtIndex(int index, Function(LogRow) updateFn) =>
      dataTable[index] = updateFn(dataTable[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in WaterLogPage widget.
  List<LogRow>? logs;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<LogRow>();
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
    paginatedDataTableController.dispose();
    topbuttonsModel.dispose();
    navBarModel.dispose();
  }
}
