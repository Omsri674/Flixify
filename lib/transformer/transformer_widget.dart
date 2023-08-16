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
import 'transformer_model.dart';
export 'transformer_model.dart';

class TransformerWidget extends StatefulWidget {
  const TransformerWidget({Key? key}) : super(key: key);

  @override
  _TransformerWidgetState createState() => _TransformerWidgetState();
}

class _TransformerWidgetState extends State<TransformerWidget>
    with TickerProviderStateMixin {
  late TransformerModel _model;

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
    _model = createModel(context, () => TransformerModel());

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
                                'Transformers:\n Rise of the Beasts',
                                style:
                                    FlutterFlowTheme.of(context).displaySmall,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/transformer1.jpeg',
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 16.0),
                              child: Text(
                                '\"Transformers: Rise of the Beasts\" is a 2023 American science fiction action film based on Hasbro\'s Transformers toy line, focusing on the Beast Wars sub-franchise. It serves as the seventh instalment in the Transformers live-action film series. The movie, directed by Steven Caple Jr.,  the story revolves around ex-military electronics expert Noah Diaz and artefact researcher Elena Wallace, who join forces with the Autobots and the Maximals to protect the Transwarp Key from the villainous Terrorcons, led by Scourge. The Terrorcons aim to use the artefact to summon their master, the planet-eating Unicron, to Earth.',
                                style: FlutterFlowTheme.of(context).labelLarge,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 10.0, 10.0, 10.0),
                              child: Text(
                                'In \"Transformers: Rise of the Beasts,\" the dark god Unicron attacks the Maximals\' homeworld, and his heralds, the Terrorcons led by Scourge, seek the Transwarp Key to aid Unicron in consuming planets. The Maximal leader sacrifices himself, and the surviving Maximals, under Optimus Primal\'s command, flee to Earth with the key. In 1994, ex-military expert Noah Diaz and intern Elena Wallace get involved when the key is discovered on Earth. The Autobots and Maximals aim to reassemble the key, but Noah secretly plans to destroy it. The battle with the Terrorcons ensues, and ultimately, the Autobots and Maximals defend Earth together, with Noah and Elena playing crucial roles in saving the day. The film ends with the Autobots considering Earth their new home and Noah joining G.I. Joe. In the mid-credits scene, Noah repairs the Autobot Mirage.',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ).animateOnActionTrigger(
                                animationsMap['textOnActionTriggerAnimation']!,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 15.0, 15.0, 15.0),
                              child: Text(
                                'Peter Cullen as Optimus Prime.\nRon Perlman as Optimus Primal.\nPeter Dinklage as Scourge.\nMichelle Yeoh as Airazor.\nPete Davidson as Mirage.\nLiza Koshy as Arcee.\nJohn DiMaggio as Stratosphere.\nAnthony Ramos as Noah Diaz.\nDominique Fishback as Elena Wallace.\nDean Scott Vazquez as Kris Diaz.\nTobe Nwigwe as Reek.\nSarah Stiles as Jillian Robinson',
                                style: FlutterFlowTheme.of(context).bodyMedium,
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
