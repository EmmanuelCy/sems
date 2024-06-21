import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://gkvgyrgsejbhwwuveoio.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdrdmd5cmdzZWpiaHd3dXZlb2lvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ0NzAxNTAsImV4cCI6MjAzMDA0NjE1MH0.Y1rQOVXr_w_xWD7trPsaZMw7wMciEw5KIG0NONjNJac';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
