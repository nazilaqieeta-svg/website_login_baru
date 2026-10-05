import 'package:flutter/material.dart';
import '../model/course.dart';

class CourseDetailPage extends StatelessWidget {
  final Course course;

  const CourseDetailPage({
    super.key,
    required this.course,
  });

  List<String> getMateri() {
    switch (course.title) {
      case 'Flutter Development':
        return [
          'Pengenalan Flutter',
          'Mengenal Widget',
          'Layout dan UI',
          'Navigasi halaman',
          'Membuat aplikasi sederhana',
        ];

      case 'Web Development':
        return [
          'HTML dasar',
          'CSS dan styling',
          'JavaScript dasar',
          'Membuat halaman web',
          'Membuat website sederhana',
        ];

      case 'Python Programming':
        return [
          'Variabel dan tipe data',
          'Operator',
          'Percabangan',
          'Perulangan',
          'Function',
          'Program sederhana',
        ];

      case 'UI/UX Design':
        return [
          'Pengenalan UI/UX',
          'Wireframe',
          'Layout',
          'Warna dan tipografi',
          'User Experience',
          'Prototype',
        ];

      case 'Database':
        return [
          'Konsep database',
          'Tabel dan relasi',
          'SQL dasar',
          'SELECT, INSERT, UPDATE, DELETE',
          'Relasi antar tabel',
        ];

      case 'Data Science':
        return [
          'Pengenalan data',
          'Pengumpulan data',
          'Pengolahan data',
          'Visualisasi data',
          'Analisis data sederhana',
        ];

      default:
        return [
          'Pengenalan materi',
          'Materi dasar',
          'Latihan sederhana',
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    final materi = getMateri();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      appBar: AppBar(
        title: const Text(
          'Detail Course',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF20233A),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // HEADER COURSE
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF5B5FEF),
                    Color(0xFF7B61FF),
                  ],
                ),
                borderRadius: BorderRadius.circular(22),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    width: 60,
                    height: 60,

                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: const Icon(
                      Icons.school_rounded,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    course.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    course.category,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // TENTANG COURSE
            const Text(
              'Tentang Course',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20233A),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              course.description,
              style: const TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 30),

            // PROGRESS
            const Text(
              'Progress Belajar',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20233A),
              ),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),

                    child: LinearProgressIndicator(
                      value: course.progress / 100,
                      minHeight: 10,
                      backgroundColor: const Color(0xFFE3DFF5),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(
                        Color(0xFF5B5FEF),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Text(
                  '${course.progress}%',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5B5FEF),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // MATERI
            const Text(
              'Materi yang Dipelajari',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20233A),
              ),
            ),

            const SizedBox(height: 15),

            ...materi.asMap().entries.map(
              (entry) {
                final index = entry.key;
                final materiItem = entry.value;

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),

                  padding: const EdgeInsets.all(16),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),

                  child: Row(
                    children: [

                      Container(
                        width: 38,
                        height: 38,

                        alignment: Alignment.center,

                        decoration: BoxDecoration(
                          color: const Color(0xFFE9E8FF),
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Color(0xFF5B5FEF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      Expanded(
                        child: Text(
                          materiItem,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF303348),
                          ),
                        ),
                      ),

                      const Icon(
                        Icons.check_circle_outline,
                        color: Color(0xFF5B5FEF),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}