import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'tabulation_widget.dart' show TabulationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TabulationModel extends FlutterFlowModel<TabulationWidget> {
  ///  Local state fields for this page.

  int? numContestants;

  bool? isSegment1Submitted = false;

  bool? isSegment2Submitted;

  bool? isSegment3Submitted;

  bool? isSegment4Submitted;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode13;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode14;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode15;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode16;
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode17;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode18;
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode19;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode20;
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode21;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode22;
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode23;
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode24;
  TextEditingController? textController24;
  String? Function(BuildContext, String?)? textController24Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode25;
  TextEditingController? textController25;
  String? Function(BuildContext, String?)? textController25Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode26;
  TextEditingController? textController26;
  String? Function(BuildContext, String?)? textController26Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode27;
  TextEditingController? textController27;
  String? Function(BuildContext, String?)? textController27Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode28;
  TextEditingController? textController28;
  String? Function(BuildContext, String?)? textController28Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode29;
  TextEditingController? textController29;
  String? Function(BuildContext, String?)? textController29Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode30;
  TextEditingController? textController30;
  String? Function(BuildContext, String?)? textController30Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode31;
  TextEditingController? textController31;
  String? Function(BuildContext, String?)? textController31Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode32;
  TextEditingController? textController32;
  String? Function(BuildContext, String?)? textController32Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode33;
  TextEditingController? textController33;
  String? Function(BuildContext, String?)? textController33Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode34;
  TextEditingController? textController34;
  String? Function(BuildContext, String?)? textController34Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode35;
  TextEditingController? textController35;
  String? Function(BuildContext, String?)? textController35Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode36;
  TextEditingController? textController36;
  String? Function(BuildContext, String?)? textController36Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode37;
  TextEditingController? textController37;
  String? Function(BuildContext, String?)? textController37Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode38;
  TextEditingController? textController38;
  String? Function(BuildContext, String?)? textController38Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode39;
  TextEditingController? textController39;
  String? Function(BuildContext, String?)? textController39Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode40;
  TextEditingController? textController40;
  String? Function(BuildContext, String?)? textController40Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode41;
  TextEditingController? textController41;
  String? Function(BuildContext, String?)? textController41Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode42;
  TextEditingController? textController42;
  String? Function(BuildContext, String?)? textController42Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode43;
  TextEditingController? textController43;
  String? Function(BuildContext, String?)? textController43Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode44;
  TextEditingController? textController44;
  String? Function(BuildContext, String?)? textController44Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode45;
  TextEditingController? textController45;
  String? Function(BuildContext, String?)? textController45Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode46;
  TextEditingController? textController46;
  String? Function(BuildContext, String?)? textController46Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode47;
  TextEditingController? textController47;
  String? Function(BuildContext, String?)? textController47Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode48;
  TextEditingController? textController48;
  String? Function(BuildContext, String?)? textController48Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode49;
  TextEditingController? textController49;
  String? Function(BuildContext, String?)? textController49Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode50;
  TextEditingController? textController50;
  String? Function(BuildContext, String?)? textController50Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode51;
  TextEditingController? textController51;
  String? Function(BuildContext, String?)? textController51Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode52;
  TextEditingController? textController52;
  String? Function(BuildContext, String?)? textController52Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode53;
  TextEditingController? textController53;
  String? Function(BuildContext, String?)? textController53Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode54;
  TextEditingController? textController54;
  String? Function(BuildContext, String?)? textController54Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode55;
  TextEditingController? textController55;
  String? Function(BuildContext, String?)? textController55Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode56;
  TextEditingController? textController56;
  String? Function(BuildContext, String?)? textController56Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode57;
  TextEditingController? textController57;
  String? Function(BuildContext, String?)? textController57Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode58;
  TextEditingController? textController58;
  String? Function(BuildContext, String?)? textController58Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode59;
  TextEditingController? textController59;
  String? Function(BuildContext, String?)? textController59Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode60;
  TextEditingController? textController60;
  String? Function(BuildContext, String?)? textController60Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode61;
  TextEditingController? textController61;
  String? Function(BuildContext, String?)? textController61Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode62;
  TextEditingController? textController62;
  String? Function(BuildContext, String?)? textController62Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode63;
  TextEditingController? textController63;
  String? Function(BuildContext, String?)? textController63Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode64;
  TextEditingController? textController64;
  String? Function(BuildContext, String?)? textController64Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode65;
  TextEditingController? textController65;
  String? Function(BuildContext, String?)? textController65Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode66;
  TextEditingController? textController66;
  String? Function(BuildContext, String?)? textController66Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode67;
  TextEditingController? textController67;
  String? Function(BuildContext, String?)? textController67Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode68;
  TextEditingController? textController68;
  String? Function(BuildContext, String?)? textController68Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode69;
  TextEditingController? textController69;
  String? Function(BuildContext, String?)? textController69Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode70;
  TextEditingController? textController70;
  String? Function(BuildContext, String?)? textController70Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode71;
  TextEditingController? textController71;
  String? Function(BuildContext, String?)? textController71Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode72;
  TextEditingController? textController72;
  String? Function(BuildContext, String?)? textController72Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode73;
  TextEditingController? textController73;
  String? Function(BuildContext, String?)? textController73Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode74;
  TextEditingController? textController74;
  String? Function(BuildContext, String?)? textController74Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode75;
  TextEditingController? textController75;
  String? Function(BuildContext, String?)? textController75Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode76;
  TextEditingController? textController76;
  String? Function(BuildContext, String?)? textController76Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode77;
  TextEditingController? textController77;
  String? Function(BuildContext, String?)? textController77Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode78;
  TextEditingController? textController78;
  String? Function(BuildContext, String?)? textController78Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode79;
  TextEditingController? textController79;
  String? Function(BuildContext, String?)? textController79Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode80;
  TextEditingController? textController80;
  String? Function(BuildContext, String?)? textController80Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    textFieldFocusNode9?.dispose();
    textController9?.dispose();

    textFieldFocusNode10?.dispose();
    textController10?.dispose();

    textFieldFocusNode11?.dispose();
    textController11?.dispose();

    textFieldFocusNode12?.dispose();
    textController12?.dispose();

    textFieldFocusNode13?.dispose();
    textController13?.dispose();

    textFieldFocusNode14?.dispose();
    textController14?.dispose();

    textFieldFocusNode15?.dispose();
    textController15?.dispose();

    textFieldFocusNode16?.dispose();
    textController16?.dispose();

    textFieldFocusNode17?.dispose();
    textController17?.dispose();

    textFieldFocusNode18?.dispose();
    textController18?.dispose();

    textFieldFocusNode19?.dispose();
    textController19?.dispose();

    textFieldFocusNode20?.dispose();
    textController20?.dispose();

    textFieldFocusNode21?.dispose();
    textController21?.dispose();

    textFieldFocusNode22?.dispose();
    textController22?.dispose();

    textFieldFocusNode23?.dispose();
    textController23?.dispose();

    textFieldFocusNode24?.dispose();
    textController24?.dispose();

    textFieldFocusNode25?.dispose();
    textController25?.dispose();

    textFieldFocusNode26?.dispose();
    textController26?.dispose();

    textFieldFocusNode27?.dispose();
    textController27?.dispose();

    textFieldFocusNode28?.dispose();
    textController28?.dispose();

    textFieldFocusNode29?.dispose();
    textController29?.dispose();

    textFieldFocusNode30?.dispose();
    textController30?.dispose();

    textFieldFocusNode31?.dispose();
    textController31?.dispose();

    textFieldFocusNode32?.dispose();
    textController32?.dispose();

    textFieldFocusNode33?.dispose();
    textController33?.dispose();

    textFieldFocusNode34?.dispose();
    textController34?.dispose();

    textFieldFocusNode35?.dispose();
    textController35?.dispose();

    textFieldFocusNode36?.dispose();
    textController36?.dispose();

    textFieldFocusNode37?.dispose();
    textController37?.dispose();

    textFieldFocusNode38?.dispose();
    textController38?.dispose();

    textFieldFocusNode39?.dispose();
    textController39?.dispose();

    textFieldFocusNode40?.dispose();
    textController40?.dispose();

    textFieldFocusNode41?.dispose();
    textController41?.dispose();

    textFieldFocusNode42?.dispose();
    textController42?.dispose();

    textFieldFocusNode43?.dispose();
    textController43?.dispose();

    textFieldFocusNode44?.dispose();
    textController44?.dispose();

    textFieldFocusNode45?.dispose();
    textController45?.dispose();

    textFieldFocusNode46?.dispose();
    textController46?.dispose();

    textFieldFocusNode47?.dispose();
    textController47?.dispose();

    textFieldFocusNode48?.dispose();
    textController48?.dispose();

    textFieldFocusNode49?.dispose();
    textController49?.dispose();

    textFieldFocusNode50?.dispose();
    textController50?.dispose();

    textFieldFocusNode51?.dispose();
    textController51?.dispose();

    textFieldFocusNode52?.dispose();
    textController52?.dispose();

    textFieldFocusNode53?.dispose();
    textController53?.dispose();

    textFieldFocusNode54?.dispose();
    textController54?.dispose();

    textFieldFocusNode55?.dispose();
    textController55?.dispose();

    textFieldFocusNode56?.dispose();
    textController56?.dispose();

    textFieldFocusNode57?.dispose();
    textController57?.dispose();

    textFieldFocusNode58?.dispose();
    textController58?.dispose();

    textFieldFocusNode59?.dispose();
    textController59?.dispose();

    textFieldFocusNode60?.dispose();
    textController60?.dispose();

    textFieldFocusNode61?.dispose();
    textController61?.dispose();

    textFieldFocusNode62?.dispose();
    textController62?.dispose();

    textFieldFocusNode63?.dispose();
    textController63?.dispose();

    textFieldFocusNode64?.dispose();
    textController64?.dispose();

    textFieldFocusNode65?.dispose();
    textController65?.dispose();

    textFieldFocusNode66?.dispose();
    textController66?.dispose();

    textFieldFocusNode67?.dispose();
    textController67?.dispose();

    textFieldFocusNode68?.dispose();
    textController68?.dispose();

    textFieldFocusNode69?.dispose();
    textController69?.dispose();

    textFieldFocusNode70?.dispose();
    textController70?.dispose();

    textFieldFocusNode71?.dispose();
    textController71?.dispose();

    textFieldFocusNode72?.dispose();
    textController72?.dispose();

    textFieldFocusNode73?.dispose();
    textController73?.dispose();

    textFieldFocusNode74?.dispose();
    textController74?.dispose();

    textFieldFocusNode75?.dispose();
    textController75?.dispose();

    textFieldFocusNode76?.dispose();
    textController76?.dispose();

    textFieldFocusNode77?.dispose();
    textController77?.dispose();

    textFieldFocusNode78?.dispose();
    textController78?.dispose();

    textFieldFocusNode79?.dispose();
    textController79?.dispose();

    textFieldFocusNode80?.dispose();
    textController80?.dispose();
  }
}
