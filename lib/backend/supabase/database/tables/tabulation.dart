import '../database.dart';

class TabulationTable extends SupabaseTable<TabulationRow> {
  @override
  String get tableName => 'tabulation';

  @override
  TabulationRow createRow(Map<String, dynamic> data) => TabulationRow(data);
}

class TabulationRow extends SupabaseDataRow {
  TabulationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TabulationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);

  int? get segment => getField<int>('segment');
  set segment(int? value) => setField<int>('segment', value);

  int get contestant => getField<int>('contestant')!;
  set contestant(int value) => setField<int>('contestant', value);

  int? get score1 => getField<int>('score1');
  set score1(int? value) => setField<int>('score1', value);

  int? get score2 => getField<int>('score2');
  set score2(int? value) => setField<int>('score2', value);

  int? get score3 => getField<int>('score3');
  set score3(int? value) => setField<int>('score3', value);

  int? get score4 => getField<int>('score4');
  set score4(int? value) => setField<int>('score4', value);

  double? get scoreTotal => getField<double>('score_total');
  set scoreTotal(double? value) => setField<double>('score_total', value);

  int get judgeId => getField<int>('judge_id')!;
  set judgeId(int value) => setField<int>('judge_id', value);
}
