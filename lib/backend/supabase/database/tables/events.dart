import '../database.dart';

class EventsTable extends SupabaseTable<EventsRow> {
  @override
  String get tableName => 'events';

  @override
  EventsRow createRow(Map<String, dynamic> data) => EventsRow(data);
}

class EventsRow extends SupabaseDataRow {
  EventsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get eventName => getField<String>('event_name');
  set eventName(String? value) => setField<String>('event_name', value);

  String? get eventDesc => getField<String>('event_desc');
  set eventDesc(String? value) => setField<String>('event_desc', value);

  DateTime get eventDate => getField<DateTime>('event_date')!;
  set eventDate(DateTime value) => setField<DateTime>('event_date', value);

  PostgresTime get eventSTime => getField<PostgresTime>('event_sTime')!;
  set eventSTime(PostgresTime value) =>
      setField<PostgresTime>('event_sTime', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  PostgresTime? get eventETime => getField<PostgresTime>('event_eTime');
  set eventETime(PostgresTime? value) =>
      setField<PostgresTime>('event_eTime', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get totalAttendees => getField<int>('total_attendees');
  set totalAttendees(int? value) => setField<int>('total_attendees', value);

  String? get judgeCode => getField<String>('judge_code');
  set judgeCode(String? value) => setField<String>('judge_code', value);
}
