import '../database.dart';

class TabulationJudgesTable extends SupabaseTable<TabulationJudgesRow> {
  @override
  String get tableName => 'tabulation_judges';

  @override
  TabulationJudgesRow createRow(Map<String, dynamic> data) =>
      TabulationJudgesRow(data);
}

class TabulationJudgesRow extends SupabaseDataRow {
  TabulationJudgesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TabulationJudgesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);

  int? get judgeId => getField<int>('judge_id');
  set judgeId(int? value) => setField<int>('judge_id', value);
}
