import 'package:flutter/material.dart';

void main() {
  runApp(Tugas());
}

class Tugas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: Color(0xfffffbf2),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffecc14d),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Sanur Beach",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
        ),
        body: Column(
          children: [
            // =========================
            // FOTO PANTAI
            // =========================
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        'assets/sanurbeach.jpeg',
                        fit: BoxFit.cover,
                      ),

                      // Overlay
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black54,
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        left: 18,
                        bottom: 18,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Sanur Beach",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // =========================
            // INFORMASI
            // =========================
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SEJARAH
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(right: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              offset: Offset(0, 3),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.history,
                                  color: Color(0xffd49f18),
                                  size: 24,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Sejarah",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Pantai Sanur memiliki sejarah dan budaya "
                              "yang erat dengan kehidupan masyarakat Bali. "
                              "Kawasan ini mulai dikenal wisatawan "
                              "mancanegara pada abad ke-20 dan berkembang "
                              "menjadi salah satu destinasi wisata terkenal "
                              "di Bali. Sanur juga memiliki peninggalan "
                              "sejarah seperti Prasasti Blanjong.",
                              style: TextStyle(
                                fontSize: 13,
                                height: 1.5,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // LOKASI
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(left: 7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              offset: Offset(0, 3),
                              color: Colors.black12,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xffd49f18),
                                  size: 24,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Lokasi",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Jalan Kusuma Sari No. 1, "
                              "Sanur, Denpasar Selatan, "
                              "Kota Denpasar, Bali, Indonesia.",
                              style: TextStyle(
                                fontSize: 13,
                                height: 1.5,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // =========================
            // CONTACT
            // =========================
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(14, 0, 14, 14),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Color(0xfffff1c7),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Color(0xffecc14d),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8a6810),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "085755808744",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color(0xff8a6810),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
