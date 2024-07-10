import 'package:flutter/material.dart';

class aplikasi extends StatefulWidget {
  aplikasi({Key? key}) : super(key: key);

  @override
  State<aplikasi> createState() => _aplikasiState();
}

class _aplikasiState extends State<aplikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE8C4E8),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFD4E99C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Orchid Lens',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: Color(0xFF394107)),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              'Merupakan aplikasi untuk mendeteksi jenis bunga anggrek dan informasi mengenai bunga anggrek.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF394107)),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                              'Dibuat menggunakan Flutter, Tensorflow Lite dan Teachable Machine',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF394107))),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
