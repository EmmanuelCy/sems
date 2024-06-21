import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import 'edit_user_widget.dart' show EditUserWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditUserModel extends FlutterFlowModel<EditUserWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for Year_Level widget.
  final yearLevelKey = GlobalKey();
  FocusNode? yearLevelFocusNode;
  TextEditingController? yearLevelTextController;
  String? yearLevelSelectedOption;
  String? Function(BuildContext, String?)? yearLevelTextControllerValidator;
  // State field(s) for School_ID widget.
  FocusNode? schoolIDFocusNode;
  TextEditingController? schoolIDTextController;
  String? Function(BuildContext, String?)? schoolIDTextControllerValidator;
  // State field(s) for DropdownDepartment widget.
  String? dropdownDepartmentValue;
  FormFieldController<String>? dropdownDepartmentValueController;
  // State field(s) for DropdownType widget.
  String? dropdownTypeValue;
  FormFieldController<String>? dropdownTypeValueController;
  // State field(s) for RadioGender widget.
  FormFieldController<String>? radioGenderValueController;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsersRow>? selectedDepartmentID;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    yearLevelFocusNode?.dispose();

    schoolIDFocusNode?.dispose();
    schoolIDTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioGenderValue => radioGenderValueController?.value;
}
