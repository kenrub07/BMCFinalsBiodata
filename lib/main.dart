import 'package:flutter/material.dart';

void main() {
  runApp(const BiodataApp());
}

class BiodataApp extends StatelessWidget {
  const BiodataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const BiodataScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BiodataScreen extends StatelessWidget {
  const BiodataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Biodata'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ✅ PURONG LITRATO MO NA LANG — WALANG NAKAHARANG
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 2,
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/romar_photo.jpg'),
                        fit: BoxFit.cover, // Sakto sa bilog — buong mukha mo
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // PERSONAL INFORMATION
                _buildHeading('PERSONAL INFORMATION'),
                const Divider(thickness: 2),
                _buildInfoRow('Full Name', 'Bernabe, Romar Q.'),
                _buildInfoRow('Date of Birth', '10/07/2006'),
                _buildInfoRow('Place of Birth', 'Obando, Bulacan'),
                _buildInfoRow('Age', '19'),
                _buildInfoRow('Gender', 'Male'),
                _buildInfoRow('Nationality', 'Filipino'),
                _buildInfoRow('Address', '181 F, Enriquez St., Panghulo, Obando, Bulacan'),
                _buildInfoRow('Email', 'Romarbernabe6@gmail.com'),
                _buildInfoRow('Contact No.', '09910180798'),

                const SizedBox(height: 20),
                _buildHeading('EDUCATIONAL BACKGROUND'),
                const Divider(thickness: 2),
                _buildInfoRow('College', 'Global Reciprocal Colleges'),
                _buildInfoRow('Course/Program', 'Bachelor of Science in Information Technology'),
                _buildInfoRow('Year Level', '3rd Year'),
                _buildInfoRow('School Year', '2026 – 2027'),

                const SizedBox(height: 20),
                _buildHeading('SKILLS'),
                const Divider(thickness: 2),
                const Text('• Flutter & Dart Development', style: TextStyle(fontSize: 15)),
                const Text('• Google Colab / Machine Learning Basics', style: TextStyle(fontSize: 15)),
                const Text('• Computer Architecture & IT Fundamentals', style: TextStyle(fontSize: 15)),
                const Text('• Art & Design', style: TextStyle(fontSize: 15)),

                const SizedBox(height: 20),
                _buildHeading('OBJECTIVE'),
                const Divider(thickness: 2),
                const Text(
                  'To learn, build, and grow as a mobile & web developer — creating useful apps with Flutter & modern technologies.',
                  style: TextStyle(fontSize: 15, height: 1.5),
                ),

                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    '"Thank you for taking the time to view my biodata!"',
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeading(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              '$label :',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}