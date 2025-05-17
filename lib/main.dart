import 'package:flutter/material.dart';

void main() {
  runApp(BukuApp());
}

class BukuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Buku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: DaftarBukuPage(),
    );
  }
}

class DaftarBukuPage extends StatelessWidget {
  final List<Map<String, String>> daftarBuku = [
    {'judul': 'Flutter untuk Pemula', 'pengarang': 'Andi Wijaya'},
    {'judul': 'Dart Programming', 'pengarang': 'Sinta Dewi'},
    {'judul': 'Laravel 10', 'pengarang': 'Budi Santoso'},
    {'judul': 'UI/UX Design', 'pengarang': 'Rani Maharani'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('📚 Daftar Buku'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            color: Colors.indigo.shade100,
            child: Text(
              'Selamat datang di perpustakaan mininya Nasiratunnas!\nBerikut adalah daftar buku yang tersedia:\nSelamat Membaca!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: daftarBuku.length,
              itemBuilder: (context, index) {
                final buku = daftarBuku[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Icon(Icons.book, color: Colors.indigo, size: 40),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              buku['judul']!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Pengarang: ${buku['pengarang']}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
