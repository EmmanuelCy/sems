import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get fullname => getField<String>('fullname')!;
  set fullname(String value) => setField<String>('fullname', value);

  String? get userType => getField<String>('user_type');
  set userType(String? value) => setField<String>('user_type', value);

  int? get schoolID => getField<int>('school_ID');
  set schoolID(int? value) => setField<int>('school_ID', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get userAuthID => getField<String>('userAuthID');
  set userAuthID(String? value) => setField<String>('userAuthID', value);

  String? get department => getField<String>('department');
  set department(String? value) => setField<String>('department', value);

  int? get yearLevel => getField<int>('year_level');
  set yearLevel(int? value) => setField<int>('year_level', value);

  String? get profileImage => getField<String>('profile_image');
  set profileImage(String? value) => setField<String>('profile_image', value);
}
