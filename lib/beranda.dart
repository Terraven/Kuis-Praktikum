import 'package:flutter/material.dart';
import 'profil.dart'; // Import halaman profil

class Faculty {
  String name;
  int numberOfMajors;
  int numberOfStudents;
  String imageAsset;
  List<String> imageUrls;

  Faculty({
    required this.name,
    required this.numberOfMajors,
    required this.numberOfStudents,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var facultyList = [
  Faculty(
    name: 'Fakultas Teknik',
    numberOfMajors: 6,
    numberOfStudents: 2000,
    imageAsset: 'images/fakultas-teknik.jpg',
    imageUrls: [
      'https://pmb.upnyk.ac.id/assets/img/fakultas_fti.png',
    ],
  ),
  Faculty(
    name: 'Fakultas Ekonomi dan Bisnis',
    numberOfMajors: 5,
    numberOfStudents: 1500,
    imageAsset: 'images/fakultas-ekonomi.jpg',
    imageUrls: [
      'https://www.old.upnyk.ac.id/asset/images/DSC_0356.JPG',
    ],
  ),
  Faculty(
    name: 'Fakultas Ilmu Sosial dan Ilmu Politik',
    numberOfMajors: 4,
    numberOfStudents: 1200,
    imageAsset: 'images/fakultas-fisip.jpg',
    imageUrls: [
      'https://haluan.co/wp-content/uploads/2024/08/UGM-Beri-Restu-Mahasiswa-Fisipol.jpeg',
    ],
  ),
  Faculty(
    name: 'Fakultas Pertanian',
    numberOfMajors: 3,
    numberOfStudents: 800,
    imageAsset: 'images/fakultas-pertanian.jpg',
    imageUrls: [
      'https://smaalmasoem.sch.id/assets/img/blog/97a5f816273f72cfa00c9eb8bcd25b6d.jpg',
    ],
  ),
  Faculty(
    name: 'Fakultas Hukum',
    numberOfMajors: 1,
    numberOfStudents: 600,
    imageAsset: 'images/fakultas-hukum.jpg',
    imageUrls: [
      'https://pict.sindonews.net/dyn/850/pena/news/2023/11/15/211/1252037/awas-salah-jurusan-ini-beda-jurusan-ilmu-hukum-dan-jurusan-hukum-yang-perlu-diketahui-vuw.jpg',
    ],
  ),
  Faculty(
    name: 'Fakultas Teknologi Mineral',
    numberOfMajors: 5,
    numberOfStudents: 3000,
    imageAsset: 'images/fakultas-ftm.jpg',
    imageUrls: [
      'https://geofisika.upnyk.ac.id/public/assets/post/82169585346910407237.png',
    ],
  ),
  Faculty(
    name: 'Fakultas Perikanan',
    numberOfMajors: 3,
    numberOfStudents: 1000,
    imageAsset: 'images/fakultas-ikan.jpg',
    imageUrls: [
      'https://joss.co.id/data/uploads/2021/03/akuakultur-FPIK-UNDIP.jpg',
    ],
  ),
];

class HomePage extends StatelessWidget {
  final String username; // Field untuk username

  HomePage({required this.username}); // Constructor menerima username

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo, $username'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Card dengan GestureDetector untuk mengarah ke profil.dart
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilUPNPage()),
                );
              },
              child: Card(
                color: Colors.lightGreenAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Sudahkah kamu mengenal UPN Jogja?\nUPN Jogja adalah kampus favorit di DIY lho!\nKenalan lebih jauh yuk!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'List Fakultas UPNYK',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: facultyList.length,
                itemBuilder: (context, index) {
                  final faculty = facultyList[index];
                  return Card(
                    color: Colors.yellowAccent,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Image.network(faculty.imageUrls.last), // Display the last image URL
                      title: Text(faculty.name),
                      subtitle: Text(
                        '${faculty.numberOfMajors} jurusan\n${faculty.numberOfStudents} mahasiswa',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
