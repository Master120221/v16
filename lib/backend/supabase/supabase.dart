import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://veflxjhgpfuyiuuxmdqi.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZlZmx4amhncGZ1eWl1dXhtZHFpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDIwMDc4ODQsImV4cCI6MjAxNzU4Mzg4NH0.PdraLIO3-krSyX5GR1F9SvH3El1l6Vn3FkAUgML9IY0';

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
