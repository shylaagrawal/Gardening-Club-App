import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'log_added_model.dart';
export 'log_added_model.dart';

class LogAddedWidget extends StatefulWidget {
  const LogAddedWidget({super.key});

  static String routeName = 'logAdded';
  static String routePath = '/logAdded';

  @override
  State<LogAddedWidget> createState() => _LogAddedWidgetState();
}

class _LogAddedWidgetState extends State<LogAddedWidget> {
  late LogAddedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogAddedModel());
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
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 140),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/canvas_(52).png',
                    width: 132.1,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: Text(
                  'l o g',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.sacramento(
                      fontWeight: FontWeight.w900,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 160,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w900,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    shadows: [
                      Shadow(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        offset: Offset(7.0, 3.0),
                        blurRadius: 1.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 130, 0, 0),
                child: Text(
                  'added',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.jua(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    fontSize: 100,
                    letterSpacing: 10,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    shadows: [
                      Shadow(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        offset: Offset(7.0, 4.0),
                        blurRadius: 1.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 450, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.safePop();
                    context.safePop();
                  },
                  text: 'done',
                  options: FFButtonOptions(
                    width: 190,
                    height: 60,
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.kalam(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 28,
                          letterSpacing: 10,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
