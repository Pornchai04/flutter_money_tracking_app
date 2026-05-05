import 'package:flutter/material.dart';
import 'package:flutter_money_tracking_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ztfhakxmsslphxmbmixj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp0Zmhha3htc3NscGh4bWJtaXhqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3ODc3NzYsImV4cCI6MjA4OTM2Mzc3Nn0.kQsxHNVgyENLvAp91hY2Ywe4TY0BpwcozqOaC1_QAKU',
  );

  runApp(const FlutterMoneyTrackingApp());
}

class FlutterMoneyTrackingApp extends StatelessWidget {
  const FlutterMoneyTrackingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money App',
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      home: const SplashScreenUi(),
    );
  }
}
