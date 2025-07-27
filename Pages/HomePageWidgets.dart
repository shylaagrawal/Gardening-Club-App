import '/backend/supabase/supabase.dart';
import '/components/nav_bar_widget.dart';
import '/components/topbuttons_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -17.34),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.asset(
                            'assets/images/vnimc_1.png',
                            width: 395,
                            height: 852,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1, -1),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 100, 60, 0),
                          child: FutureBuilder<List<LogRow>>(
                            future: LogTable().queryRows(
                              queryFn: (q) => q
                                  .or("sideWatered.eq.\"Shed Side\", sideWatered.eq.\"Both Sides\"")
                                  .order('date'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<LogRow> imageLogRowList = snapshot.data!;

                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.addedDateLog =
                                      await LogTable().insert({
                                    'date': supaSerialize<DateTime>(
                                        getCurrentTimestamp),
                                    'sideWatered': 'Shed Side',
                                    'hours': 0.0,
                                  });
                                  if (imageLogRowList
                                          .elementAtOrNull(0)
                                          ?.date ==
                                      imageLogRowList
                                          .elementAtOrNull(1)
                                          ?.date) {
                                    _model.needsWater = 0;
                                    safeSetState(() {});
                                  } else {
                                    _model.needsWater = 1;
                                    safeSetState(() {});
                                  }

                                  _model.deletedDateLog =
                                      await LogTable().delete(
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'hours',
                                      0.0,
                                    ),
                                    returnRows: true,
                                  );

                                  safeSetState(() {});
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/canvas_(58)_(1).png',
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      if (_model.needsWater == 1)
                        Align(
                          alignment: AlignmentDirectional(1, -1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 125, 15, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/canvas_(56).png',
                                width: 145,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      if (_model.needsWater == 0)
                        Align(
                          alignment: AlignmentDirectional(1, -1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 125, 10, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/canvas_(57).png',
                                width: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -17.34),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.asset(
                            'assets/images/49svh_2.png',
                            width: 395,
                            height: 852,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 60, 0),
                          child: FutureBuilder<List<LogRow>>(
                            future: LogTable().queryRows(
                              queryFn: (q) => q
                                  .or("sideWatered.eq.\"Grass Side\", sideWatered.eq.\"Both Sides\"")
                                  .order('date'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<LogRow> imageLogRowList = snapshot.data!;

                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.addedDateLog2 =
                                      await LogTable().insert({
                                    'date': supaSerialize<DateTime>(
                                        getCurrentTimestamp),
                                    'sideWatered': 'Shed Side',
                                    'hours': 0.0,
                                  });
                                  if (imageLogRowList
                                          .elementAtOrNull(0)
                                          ?.date ==
                                      imageLogRowList
                                          .elementAtOrNull(1)
                                          ?.date) {
                                    _model.needsWater2 = 0;
                                    safeSetState(() {});
                                  } else {
                                    _model.needsWater2 = 1;
                                    safeSetState(() {});
                                  }

                                  _model.deletedDateLog2 =
                                      await LogTable().delete(
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'hours',
                                      0.0,
                                    ),
                                    returnRows: true,
                                  );

                                  safeSetState(() {});
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/canvas_(58)_(1).png',
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      if (_model.needsWater2 == 1)
                        Align(
                          alignment: AlignmentDirectional(1, -1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 45, 15, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/canvas_(56).png',
                                width: 145,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      if (_model.needsWater2 == 0)
                        Align(
                          alignment: AlignmentDirectional(1, -1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 45, 10, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/canvas_(57).png',
                                width: 150,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ].divide(SizedBox(height: 0)),
              ),
            ),
            wrapWithModel(
              model: _model.topbuttonsModel,
              updateCallback: () => safeSetState(() {}),
              child: TopbuttonsWidget(),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: wrapWithModel(
                model: _model.navBarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavBarWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
