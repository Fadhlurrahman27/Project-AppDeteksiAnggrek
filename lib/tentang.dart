import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  Tentang({Key? key}) : super(key: key);

  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  List<String> _namabunga = [
    'Angraecum',
    'Brassavola',
    'Brassia',
    'Cattleya',
    'Cymbidium',
    'Dendrobium',
    'Encyclia',
    'Epidendrum',
    'Lycaste',
    'Masdevallia',
    'Maxillaria',
    'Miltonia',
    'Miltoniopsis',
    'Odontoglossum',
    'Oncidium',
    'Paphiopedilum',
    'Phalaenopsis',
    'Vanda',
    'Vanilla',
    'Zygopetalum'
  ];
  List<String> _penjelasan = [
    'Angraecum, yang juga dikenal sebagai anggrek komet, adalah sebuah genus dari keluarga Orchidaceae yang berasal dari daerah tropis di Afrika Selatan, serta Sri Lanka. Genus ini terdiri dari 223 spesies. Salah satu spesies yang terkenal dalam genus ini adalah Angraecum sesquipedale, yang memiliki bunga dengan kelopak yang panjang dan terdorong menjauh dari pusat bunga. Spesies ini memiliki hubungan simbiosis dengan ngengat yang memiliki lidah panjang, dan kaitannya ini menjadi salah satu contoh menarik dalam kaitan evolusi bunga dan polinatornya. ',
    'Brassavola adalah genus anggrek yang tergolong dalam keluarga Orchidaceae. Genus ini terdiri dari beberapa spesies anggrek epifit yang banyak ditemukan di Amerika Tengah dan Selatan, serta beberapa daerah tropis lainnya. Anggrek Brassavola memiliki ciri-ciri daun tipis, bunga yang harum, dan bentuk bunga yang khas dengan kelopak putih atau hijau pucat yang seringkali lebih besar daripada mahkota. Beberapa spesies Brassavola terkenal antara lain Brassavola nodosa, yang dikenal karena harumnya yang khas dan bunganya yang menarik. Anggrek Brassavola sering menjadi pilihan populer di kalangan para kolektor dan pecinta anggrek karena keindahan dan karakteristiknya yang unik.',
    'Anggrek Brassia adalah genus anggrek yang berasal dari Amerika Tengah dan Selatan. Mereka dikenal dengan julukan "Spider Orchids" karena bunga-bunga mereka memiliki kelopak yang panjang dan ramping yang menyerupai kaki laba-laba. Brassia memiliki bunga yang unik dan menarik, dengan variasi warna dan bentuk yang mencolok.',
    'Anggrek Cattleya adalah genus anggrek yang terkenal dengan bunga-bunga yang besar, berwarna-warni, dan sangat menarik secara visual. Genus ini berasal dari Amerika Tengah dan Selatan. Bunga Cattleya memiliki kelopak lebar dan mahkota yang mencolok, seringkali dengan variasi warna yang memikat. Mereka merupakan pilihan populer dalam budidaya anggrek hias karena keindahan bunganya yang spektakuler.',
    'Anggrek Cymbidium adalah genus anggrek yang dikenal dengan bunga-bunga yang berukuran sedang hingga besar, seringkali dengan bentuk yang simetris. Genus ini memiliki banyak spesies dan hibrida yang berasal dari daerah Asia, seperti Cina, Jepang, dan wilayah Himalaya. Cymbidium populer dalam budidaya anggrek hias karena ketahanannya yang baik dan variasi warna serta bentuk bunga yang menarik. Mereka sering digunakan sebagai tanaman pot di dalam ruangan maupun di luar ruangan.',
    'Anggrek Dendrobium adalah genus anggrek yang beragam, terdiri dari ribuan spesies yang tersebar di berbagai daerah tropis di seluruh dunia. Dendrobium dikenal dengan bunga-bunga yang bervariasi dari ukuran kecil hingga besar, dengan berbagai warna dan bentuk. Mereka termasuk anggrek epifit, terutama ditemukan di Asia, Australia, dan Pasifik. Anggrek Dendrobium merupakan salah satu genus yang populer dalam budidaya anggrek hias karena keindahan bunga-bunga mereka.',
    'Anggrek Encyclia adalah genus anggrek yang sebagian besar ditemukan di daerah Amerika Tengah dan Selatan. Mereka memiliki bunga-bunga yang unik dengan bentuk dan warna yang bervariasi. Encyclia termasuk anggrek epifit dan terestrial, artinya mereka dapat tumbuh di permukaan pohon atau tanah. Beberapa spesies Encyclia memiliki bunga yang harum dan menarik perhatian bagi para penggemar anggrek. Genus ini memiliki banyak variasi dan hibrida yang populer di kalangan kolektor anggrek.',
    'Anggrek Epidendrum adalah genus anggrek yang tersebar luas di Amerika Tengah, Selatan, dan beberapa bagian Amerika Utara. Mereka memiliki berbagai bentuk bunga dan biasanya tumbuh sebagai anggrek epifit atau litofit, yaitu menempel pada pohon atau tumbuh di batu. Epidendrum memiliki bunga dengan kelopak dan mahkota yang khas, seringkali dalam warna yang mencolok dan beragam. Beberapa spesies memiliki harum yang menarik. Karena keragaman bentuk dan warna bunga, Epidendrum menjadi populer di kalangan penggemar anggrek.',
    'Anggrek Lycaste adalah genus anggrek yang berasal dari Amerika Tengah dan Selatan. Mereka memiliki bunga-bunga yang menarik, seringkali berukuran besar dan memiliki kelopak yang tebal. Lycaste cenderung tumbuh di lingkungan yang sedikit lebih sejuk dibandingkan dengan beberapa anggrek tropis lainnya. Mereka dikenal dengan bunga-bunga yang harum dan variasi warna yang mencolok. Lycaste sering menjadi pilihan bagi para penggemar anggrek yang tertarik pada keindahan dan keunikannya.',
    'Anggrek Masdevallia adalah genus anggrek yang berasal dari daerah pegunungan Amerika Selatan, terutama di Andes. Mereka memiliki ciri khas bunga-bunga berukuran kecil hingga sedang, dengan bentuk yang unik dan seringkali mencolok. Bunga Masdevallia memiliki mahkota yang pendek dan lebar serta kelopak yang terkadang tebal dan rumit. Beberapa spesiesnya memiliki warna dan pola yang spektakuler. Anggrek ini umumnya tumbuh di lingkungan yang lebih sejuk dan lembap. Karena keunikan bentuk dan warna bunganya, Masdevallia menjadi favorit di kalangan kolektor anggrek dan pecinta tanaman hias.',
    'Anggrek Maxillaria adalah genus anggrek yang tersebar luas di daerah tropis dan subtropis di Amerika Tengah, Selatan, dan beberapa bagian Amerika Utara. Mereka memiliki ciri bunga yang bervariasi, dengan kelopak dan mahkota yang khas. Bunga Maxillaria seringkali memiliki struktur yang menarik dan variasi warna yang mencolok. Beberapa spesiesnya memiliki bunga yang harum. Maxillaria umumnya tumbuh sebagai anggrek epifit atau litofit, menempel pada pohon atau tumbuh di batu. Karena beragam bentuk dan warna bunga, Maxillaria menjadi populer di kalangan penggemar anggrek.',
    'Anggrek Miltonia adalah genus anggrek yang berasal dari Amerika Selatan, terutama Brasil. Mereka dikenal dengan bunga-bunga berukuran sedang hingga besar, dengan kelopak yang lebar dan mahkota yang beraneka warna. Miltonia sering dijuluki "Pansy Orchids" karena bunga-bunga mereka seringkali memiliki pola yang mirip dengan bunga pensi. Beberapa spesies Miltonia memiliki aroma yang harum. Anggrek ini umumnya ditemukan di hutan lembap dan tumbuh dengan baik dalam kondisi cahaya yang sedang hingga rendah. Karena keindahan bunganya yang spektakuler, Miltonia menjadi pilihan populer bagi para penggemar anggrek hias.',
    'Anggrek Miltoniopsis adalah genus anggrek yang juga dikenal sebagai "Pansy Orchids" karena bunga-bunga mereka menyerupai bunga pensi. Genus ini berasal dari Amerika Selatan, terutama daerah pegunungan di Ekuador dan Kolombia. Miltoniopsis memiliki bunga yang relatif besar dan lebar, dengan kelopak dan mahkota yang menarik serta beragam pola dan warna. Mereka sering dihargai karena keindahan bunga dan aroma harum yang khas. Miltoniopsis biasanya tumbuh di lingkungan yang lebih sejuk dan lembap, dan mereka memerlukan perawatan khusus untuk berhasil ditanam di rumah atau dalam pot.',
    'Anggrek Odontoglossum adalah genus anggrek yang berasal dari Amerika Tengah dan Selatan, terutama daerah pegunungan di Andes. Genus ini dikenal dengan bunga-bunga yang menarik dan beragam, seringkali dengan warna dan pola yang mencolok. Odontoglossum memiliki kelopak dan mahkota yang khas, dan beberapa spesiesnya memiliki bunga yang cukup besar. Mereka umumnya tumbuh di lingkungan yang lebih sejuk dan lembap, serta memerlukan perawatan khusus dalam budidaya anggrek hias. Karena variasi bentuk dan warna bunga, Odontoglossum menjadi populer di kalangan penggemar anggrek.',
    'Anggrek Oncidium adalah genus anggrek yang berasal dari Amerika Tengah, Selatan, dan beberapa bagian Amerika Utara. Mereka memiliki bunga-bunga yang unik dan beragam, dengan kelopak dan mahkota yang khas. Oncidium dikenal dengan julukan "Dancing Lady Orchids" karena bentuk bunganya yang menyerupai sekelompok penari. Bunga Oncidium seringkali memiliki warna cerah dan pola yang mencolok. Genus ini terdiri dari berbagai spesies yang tumbuh dengan karakteristik yang berbeda-beda, mulai dari anggrek epifit hingga litofit. \n\nOncidium dikenal sebagai anggrek yang relatif mudah untuk ditanam dan dirawat, sehingga menjadi pilihan populer bagi para pemula dalam budidaya anggrek hias. Karena variasi bentuk dan warna bunganya, Oncidium menjadi salah satu genus yang diminati oleh para kolektor dan pecinta anggrek.',
    'Anggrek Paphiopedilum, juga dikenal sebagai "Lady Slipper Orchids", adalah genus anggrek yang banyak dijumpai di Asia Tenggara, seperti Indonesia, Malaysia, Filipina, dan sekitarnya. Mereka memiliki ciri bunga yang unik, dengan mahkota yang melengkung ke bawah dan mirip dengan bentuk sepatu wanita. Paphiopedilum sering ditemukan tumbuh di tanah atau bahan organik di hutan-hutan yang lembap. \n\nGenus ini memiliki variasi bentuk dan warna bunga yang menarik, termasuk warna-warna lembut dan pola-pola yang beragam. Paphiopedilum biasanya tumbuh di daerah yang lebih teduh, sehingga mereka lebih cocok untuk ditanam di tempat yang tidak terlalu terkena sinar matahari langsung. Karena keindahan dan keunikan bunga-bunga mereka, Paphiopedilum menjadi pilihan populer bagi para penggemar anggrek hias.',
    'Anggrek Phalaenopsis, juga dikenal sebagai "Moth Orchids", adalah salah satu genus anggrek yang paling populer dalam budidaya anggrek hias. Genus ini berasal dari daerah Asia Tenggara seperti Indonesia, Filipina, dan sekitarnya. Phalaenopsis memiliki bunga yang berukuran besar dan elegan, dengan kelopak yang mirip dengan sayap ngengat. \n\nPhalaenopsis dikenal dengan beragam warna dan variasi bentuk bunga yang menarik, dari putih murni hingga warna-warna cerah dan pola yang mencolok. Mereka sering ditanam sebagai tanaman indoor karena tahan terhadap kondisi ruangan. Phalaenopsis biasanya memiliki waktu berbunga yang lama, membuatnya populer di kalangan penggemar anggrek. Keunikan bunganya, bersama dengan kemudahan perawatan, telah membuat Phalaenopsis menjadi salah satu anggrek pilihan bagi banyak orang yang tertarik pada tanaman hias.',
    'Anggrek Vanda adalah genus anggrek yang terkenal dengan bunga-bunga yang besar dan mencolok. Genus ini berasal dari daerah tropis di Asia, seperti India, Tiongkok, dan Asia Tenggara. Vanda memiliki bunga yang tahan lama dan memiliki kelopak dan mahkota yang berukuran besar, sering kali dengan warna yang cerah dan pola yang menarik. \n\nVanda biasanya tumbuh sebagai anggrek epifit, menempel pada pohon atau benda lainnya. Namun, beberapa spesies juga dapat tumbuh di tanah atau substrat khusus. Mereka memerlukan cahaya yang cukup terang untuk tumbuh dengan baik dan sering dianggap memerlukan perawatan yang lebih intensif dibandingkan beberapa jenis anggrek lainnya. \n\nKeindahan bunga dan variasi warna Vanda telah membuatnya populer di kalangan penggemar anggrek. Meskipun memerlukan perawatan lebih lanjut, banyak kolektor dan pecinta tanaman hias yang tertarik untuk menanam anggrek Vanda karena kecantikan bunga-bunganya yang spektakuler.',
    'Anggrek Vanilla adalah genus anggrek yang terkenal karena menghasilkan biji vanili yang digunakan untuk membuat rempah-rempah dan aroma. Genus ini berasal dari Amerika Tengah dan Selatan. Anggrek Vanilla biasanya tumbuh sebagai tanaman merambat atau menjalar di pohon-pohon di hutan hujan tropis. \n\nBunga Vanilla umumnya tidak terlalu mencolok, tetapi memiliki bentuk yang sederhana dengan warna-warna yang lembut. Bunga-bunganya perlu dibuahi secara manual untuk menghasilkan biji vanili. Proses ini melibatkan transfer serbuk sari dari mahkota ke bakal buah, yang kemudian akan tumbuh menjadi biji vanili setelah penyerbukan. \n\nBiji vanili kemudian diolah menjadi rempah-rempah yang digunakan dalam makanan, minuman, dan parfum. Anggrek Vanilla memiliki peran penting dalam industri kuliner dan parfum, membuatnya menjadi spesies anggrek yang penuh arti dan dihargai oleh banyak orang.',
    'Anggrek Zygopetalum adalah genus anggrek yang terkenal karena bunga-bunga mereka yang unik dan harum. Genus ini berasal dari Amerika Selatan, terutama Brasil dan sekitarnya. Zygopetalum memiliki bunga berukuran sedang hingga besar, dengan kelopak dan mahkota yang khas. \n\nBunga Zygopetalum seringkali memiliki pola dan variasi warna yang mencolok, dan beberapa spesiesnya memiliki aroma yang harum. Mereka biasanya tumbuh di lingkungan yang lembap dan relatif sejuk. Anggrek ini umumnya digunakan sebagai tanaman hias karena keindahan bunga-bunga dan aroma yang memikat. Meskipun perawatannya mungkin memerlukan sedikit usaha lebih, hasilnya dalam bentuk bunga yang indah dan harum membuat Zygopetalum menjadi pilihan menarik bagi pecinta anggrek.',
  ];
  List<String> _gambar = [
    'assets/Angraecum.png',
    'assets/Brassavola.png',
    'assets/Brassia.png',
    'assets/Cattleya.png',
    'assets/Cymbidium.png',
    'assets/Dendrobium.png',
    'assets/Encyclia.png',
    'assets/Epidendrum.png',
    'assets/Lycaste.png',
    'assets/Masdevallia.png',
    'assets/Maxillaria.png',
    'assets/Miltonia.png',
    'assets/Miltoniopsis.png',
    'assets/Odontoglossum.png',
    'assets/Oncidium.png',
    'assets/Paphiopedilum.png',
    'assets/Phalaenopsis.png',
    'assets/Vanda.png',
    'assets/Vanilla.png',
    'assets/Zygopetalum.png'
  ];
  List<bool> _containerVisibilityList = List.generate(20, (index) => false);
  void _toggleContainerVisibility(int index) {
    setState(() {
      _containerVisibilityList[index] = !_containerVisibilityList[index];
    });
  }

  bool _containerVisible = false;

  void _toggleContainer() {
    setState(() {
      _containerVisible = !_containerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8C4E8),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              for (int i = 0; i < 20; i++)
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () => _toggleContainerVisibility(i),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Color(0xFFD4E99C)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _namabunga[i],
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF394107)),
                              ),
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  _gambar[i],
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (_containerVisibilityList[i])
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xFF394107),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _penjelasan[i],
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    SizedBox(height: 10),
                  ],
                ),
            ],
          ),
        ),
      )),
    );
  }
}
