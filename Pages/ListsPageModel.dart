import '/backend/supabase/supabase.dart';
import '/components/add_list_widget.dart';
import '/components/topbuttons_back_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'lists_widget.dart' show ListsWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListsModel extends FlutterFlowModel<ListsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<ChecklistRow, bool> checkboxValueMap1 = {};
  List<ChecklistRow> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<ChecklistRow, bool> checkboxValueMap2 = {};
  List<ChecklistRow> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Model for topbuttonsBack component.
  late TopbuttonsBackModel topbuttonsBackModel;
  // Model for addList component.
  late AddListModel addListModel;

  @override
  void initState(BuildContext context) {
    topbuttonsBackModel = createModel(context, () => TopbuttonsBackModel());
    addListModel = createModel(context, () => AddListModel());
  }

  @override
  void dispose() {
    topbuttonsBackModel.dispose();
    addListModel.dispose();
  }
}
