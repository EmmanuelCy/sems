import '/backend/supabase/supabase.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'tab_result_widget.dart' show TabResultWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TabResultModel extends FlutterFlowModel<TabResultWidget> {
  ///  Local state fields for this page.

  int? connectedJudges;

  List<TabulationRow> tabResult = [];
  void addToTabResult(TabulationRow item) => tabResult.add(item);
  void removeFromTabResult(TabulationRow item) => tabResult.remove(item);
  void removeAtIndexFromTabResult(int index) => tabResult.removeAt(index);
  void insertAtIndexInTabResult(int index, TabulationRow item) =>
      tabResult.insert(index, item);
  void updateTabResultAtIndex(int index, Function(TabulationRow) updateFn) =>
      tabResult[index] = updateFn(tabResult[index]);

  List<String> ranking = [];
  void addToRanking(String item) => ranking.add(item);
  void removeFromRanking(String item) => ranking.remove(item);
  void removeAtIndexFromRanking(int index) => ranking.removeAt(index);
  void insertAtIndexInRanking(int index, String item) =>
      ranking.insert(index, item);
  void updateRankingAtIndex(int index, Function(String) updateFn) =>
      ranking[index] = updateFn(ranking[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in tabResult widget.
  List<TabulationJudgesRow>? getJudgesEvent;
  // Stores action output result for [Backend Call - Query Rows] action in tabResult widget.
  List<TabulationRow>? tabulationData;
  // Stores action output result for [Backend Call - Query Rows] action in tabResult widget.
  List<TabulationRow>? tabulationDataset;
  // Stores action output result for [Backend Call - Query Rows] action in tabResult widget.
  List<TabulationJudgesRow>? getJudgesEventcount;
  // Model for webNav component.
  late WebNavModel webNavModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
  }
}
