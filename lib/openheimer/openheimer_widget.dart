import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'openheimer_model.dart';
export 'openheimer_model.dart';

class OpenheimerWidget extends StatefulWidget {
  const OpenheimerWidget({Key? key}) : super(key: key);

  @override
  _OpenheimerWidgetState createState() => _OpenheimerWidgetState();
}

class _OpenheimerWidgetState extends State<OpenheimerWidget>
    with TickerProviderStateMixin {
  late OpenheimerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenheimerModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              icon: Icon(
                                Icons.chevron_left_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.safePop();
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Open Heimer',
                                style:
                                    FlutterFlowTheme.of(context).displaySmall,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/oh1.jpeg',
                                width: double.infinity,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 0.0, 8.0),
                              child: Text(
                                'OVERVIEW',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 16.0),
                                child: Text(
                                  '\"Oppenheimer\" is a 2023 biographical thriller film directed by Christopher Nolan, based on the life of physicist J. Robert Oppenheimer. The movie delves into his role in the Manhattan Project during World War II and the fallout from his 1954 security hearing. Cillian Murphy stars as Oppenheimer, alongside Emily Blunt, Matt Damon, and Robert Downey Jr. in supporting roles.',
                                  style:
                                      FlutterFlowTheme.of(context).labelLarge,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 0.0, 8.0),
                              child: Text(
                                'PLOT',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 10.0, 10.0, 10.0),
                                child: Text(
                                  'The content narrates the life of J. Robert Oppenheimer, starting as a doctoral student facing homesickness and anxiety at Cambridge\'s Cavendish Laboratory in 1926. It follows his academic journey, including completing his physics PhD in Germany and returning to the United States to expand quantum physics research. Amid World War II, Oppenheimer is recruited by General Leslie Groves to lead the Manhattan Project, where he assembles a team to secretly develop the atomic bomb. After the bomb\'s successful use in Japan, Oppenheimer\'s conscience is burdened by its destructive power. He advocates against further nuclear research and becomes embroiled in political tensions during the Cold War. Betrayals and allegations of communist associations lead to Oppenheimer\'s downfall. In 1963, he is politically rehabilitated and receives the Enrico Fermi Award. The story explores Oppenheimer\'s moral dilemmas and concerns about the world-changing implications of nuclear weapons.',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation']!,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 0.0, 8.0),
                              child: Text(
                                'CAST',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 15.0, 15.0, 15.0),
                                child: Text(
                                  'Cillian Murphy as J. Robert Oppenheimer\nEmily Blunt as Katherine\nMatt Damon as Gen. Leslie Groves\nRobert Downey Jr. as Lewis Strauss\nFlorence Pugh as Jean Tatlock\nJosh Hartnett as Ernest Lawrence\nCasey Affleck as Boris Pash\nRami Malek as David L. Hill\nKenneth Branagh as Niels Bohr\nBenny Safdie as Edward Teller\nJason Clarke as Roger Robb\nDylan Arnold as Frank Oppenheimer\nTom Conti as Albert Einstein\nJames D\'Arcy as Patrick Blackett\nDavid Dastmalchian as William L. Borden\nDane DeHaan as Maj Gen. Kenneth Nichols\nAlden Ehrenreich as a Senate aide to Lewis Strauss\nTony Goldwyn as Gordon Gray\nJefferson Hall as Haakon Chevalier\nDavid Krumholtz as Isidor Isaac Rabi\nMatthew Modine as Vannevar Bush\nGustaf Skarsgård as Hans Bethe\nMichael Angarano as Robert Serber',
                                  textAlign: TextAlign.center,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('player');
                        },
                        text: 'Watch NOW',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor: Color(0xFF10AC4B),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
