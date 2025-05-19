import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart'; // Import Supabase SDK
import 'screens/home_page.dart'; // Import halaman utama

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Pastikan Flutter binding sudah siap

  await Supabase.initialize(
    // Inisialisasi Supabase
    url: 'https://your-project.supabase.co', // Ganti dengan URL proyek Supabase
    anonKey: 'your-anon-key', // Ganti dengan Anon key Supabase
  );

  runApp(const MyApp()); // Jalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCTV App',
      debugShowCheckedModeBanner: false, // Hilangkan debug banner
      home: HomePage(), // Tampilkan halaman utama
    );
  }
}
