import 'package:flutter/material.dart';

class ProfilUPNPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail UPNVY'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView( 
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Image.asset(
              'images/upn.jpg',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            
           
            Text(
              'Pendidikan UPN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            
            
            Text(
              'Arah Pendidikan',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            
            
            Text(
              'Arah pendidikan UPN "Veteran" Yogyakarta adalah mengembangkan ilmu pengetahuan dan teknologi yang dilandasi oleh nilai-nilai kedisiplinan, kejuangan, kreativitas, keunggulan, kebangsaan, dan kejujuran dalam rangka menunjang pembangunan nasional melalui bidang pendidikan tinggi dalam rangka terciptanya sumber daya manusia yang unggul di era global dengan dilandasi jiwa bela negara.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            
           
            Text(
              'Tujuan Pendidikan',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            
            
            Text(
              'Pendidikan di UPN "Veteran" Yogyakarta bertujuan untuk:\n'
              '1. Menyelenggarakan pendidikan dan pengajaran yang berkualitas guna menghasilkan lulusan yang berdaya saing global yang memiliki jiwa disiplin, berdaya juang, dan kreatif serta berwawasan kebangsaan dan mampu menjadi pemimpin di era global.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
