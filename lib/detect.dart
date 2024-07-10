import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';

class Detect extends StatefulWidget {
  const Detect({super.key});

  @override
  State<Detect> createState() => _DetectState();
}

class _DetectState extends State<Detect> {
  Map<String, String> labelMessages = {
    'Angraecum': 'Gambar sesuai dengan Angraecum',
    'Brassavola': 'Gambar sesuai dengan Brassavola',
    'Brassia': 'Gambar sesuai dengan Brassia',
    'Cattleya': 'Gambar sesuai dengan Cattleya',
    'Cymbidium': 'Gambar sesuai dengan Cymbidium',
    'Dendrobium': 'Gambar sesuai dengan Dendrobium',
    'Encyclia': 'Gambar sesuai dengan Encyclia',
    'Epidendrum': 'Gambar sesuai dengan Epidendrum',
    'Lycaste': 'Gambar sesuai dengan Lycaste',
    'Masdevallia': 'Gambar sesuai dengan Masdevallia',
    'Maxillaria': 'Gambar sesuai dengan Maxillaria',
    'Miltonia': 'Gambar sesuai dengan Miltonia',
    'Miltoniopsis': 'Gambar sesuai dengan Miltoniopsis',
    'Odontoglossum': 'Gambar sesuai dengan Odontoglossum',
    'Oncidium': 'Gambar sesuai dengan Oncidium',
    'Paphiopedilum': 'Gambar sesuai dengan Paphiopedilum',
    'Phalaenopsis': 'Gambar sesuai dengan Phalaenopsis',
    'Vanda': 'Gambar sesuai dengan Vanda',
    'Vanilla': 'Gambar sesuai dengan Vanilla',
    'Zygopetalum': 'Gambar sesuai dengan Zygopetalum',
  };

  Map<String, String> trueLabels = {
    'Angraecum': 'Angraecum',
    'Brassavola': 'Brassavola',
    'Brassia': 'Brassia',
    'Cattleya': 'Cattleya',
    'Cymbidium': 'Cymbidium',
    'Dendrobium': 'Dendrobium',
    'Encyclia': 'Encyclia',
    'Epidendrum': 'Epidendrum',
    'Lycaste': 'Lycaste',
    'Masdevallia': 'Masdevallia',
    'Maxillaria': 'Maxillaria',
    'Miltonia': 'Miltonia',
    'Miltoniopsis': 'Miltoniopsis',
    'Odontoglossum': 'Odontoglossum',
    'Oncidium': 'Oncidium',
    'Paphiopedilum': 'Paphiopedilum',
    'Phalaenopsis': 'Phalaenopsis',
    'Vanda': 'Vanda',
    'Vanilla': 'Vanilla',
    'Zygopetalum': 'Zygopetalum',
  };

  double _accuracy = 0.0;
  bool _flowerDetected = false;
  bool _loading = true;
  late File _image;
  late List _output = [];
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 1,
      threshold: 0.9,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    print(output);

    if (output != null && output.isNotEmpty) {
      String predictedLabel = output[0]['label'];
      String trueLabel = trueLabels[predictedLabel] ?? '';

      bool flowerDetected = trueLabel.isNotEmpty;
      double accuracy = flowerDetected ? output[0]['confidence'] : 0.0;

      setState(() {
        _output = output;
        _loading = false;
        _flowerDetected = flowerDetected;
        _accuracy = accuracy;
      });
    }
  }

  loadModel() async {
    await Tflite.loadModel(
        model: 'assets/model_unquant.tflite', labels: 'assets/labels.txt');
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  pickImage() async {
    var image = await picker.pickImage(source: ImageSource.camera);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
      print(_image.path);
    }
    classifyImage(_image);
  }

  pickGalleryImage() async {
    var image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
      print(_image.path);
    }
    classifyImage(_image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8C4E8),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 85),
            Center(
              child: Text(
                'Detect Bunga Anggrek',
                style: TextStyle(
                    color: Color(0xFF3A3B5B),
                    fontWeight: FontWeight.w900,
                    fontSize: 28),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: _loading
                  ? Container(
                      width: 280,
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/icon_image.png'),
                          SizedBox(height: 50),
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 250,
                            child: Image.file(_image),
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: [
                              if (_flowerDetected)
                                Column(
                                  children: [
                                    Text(
                                      'Jenis Bunga: ${_output[0]['label']}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Tingkat Akurasi: ${(_accuracy * 100).toStringAsFixed(2)}%',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      labelMessages
                                              .containsKey(_output[0]['label'])
                                          ? labelMessages[_output[0]['label']]!
                                          : 'Gambar tidak cocok dengan label',
                                      style: TextStyle(
                                        color: _output[0]['label'] ==
                                                'Gambar tidak cocok dengan label'
                                            ? Colors.red
                                            : Colors.green,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              else
                                Column(
                                  children: [
                                    Text(
                                      'Gambar tidak terdeteksi sebagai bunga anggrek',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      height: 250,
                                      child: Image.file(_image),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Jenis Bunga: Tidak Terdeteksi',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: pickImage,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                        color: Color(0xFF3A3B5B),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Camera',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: pickGalleryImage,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                        color: Color(0xFF3A3B5B),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Gallery',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: Detect()));
}
