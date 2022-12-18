// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Concrescence',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Concrescence'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String urlProfile = 'assets/peerapol.jpg';
  String fbImg =
      'https://cdn.pixabay.com/photo/2021/12/10/16/37/facebook-6860914__340.png';
  String twtImg =
      'https://cdn.pixabay.com/photo/2015/03/10/17/30/twitter-667462_960_720.png';
  String linkedImg =
      'https://play-lh.googleusercontent.com/kMofEFLjobZy_bCuaiDogzBcUT-dz3BBbOrIEjJ-hqOabjK8ieuevGe6wlTD15QzOqw';
  String igImg =
      'https://download.logo.wine/logo/Instagram/Instagram-Logo.wine.png';
  String playGames =
      'https://i.pinimg.com/736x/90/86/41/9086413a443d6239301d96c45baf1215.jpg';
  String watchSeries = 'https://pic.clubic.com/v1/images/1714513/raw';
  String listenMusic =
      'https://cdn-icons-png.flaticon.com/512/3844/3844724.png';
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(widget.title),
        ),
      ),
      body: SingleChildScrollView(
          child: indexSelected == 3
              ? profile()
              : indexSelected == 0
                  ? workplace()
                  : indexSelected == 1
                      ? education()
                      : tool()),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Workplace',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Education',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handyman_rounded),
            label: 'Tools',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: indexSelected,
        selectedItemColor: Colors.white,
        onTap: menuSelected,
      ),
    );
  }

  void menuSelected(int index) {
    setState(() {
      indexSelected = index;
    });
  }

  profile() {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.grey[200],
                width: double.infinity,
                height: 240,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage(
                    urlProfile,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Peerapol Onmanee',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(
            indent: 50,
            endIndent: 50,
          ),
          Text(
            'peerapol.work@gmail.com | github.com/peerapol411',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey[600],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 10),
            child: Text(
              '+66 62-459-3907',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Social : ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  fbImg,
                  height: 25,
                ),
                Text(
                  '   Peerapol Onmanee  ',
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      twtImg,
                      height: 25,
                    ),
                  ),
                ),
                Text(
                  '   @OPeerius',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    linkedImg,
                    height: 25,
                  ),
                ),
                Text(
                  '   Peerapol Onmanee',
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      igImg,
                      height: 35,
                    ),
                  ),
                ),
                Text(
                  'peerapol.on',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Hobby : ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, bottom: 10),
            child: Row(
              children: [
                Image.network(
                  playGames,
                  height: 35,
                ),
                Text('Play games'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, bottom: 10),
            child: Row(
              children: [
                Image.network(
                  watchSeries,
                  height: 33,
                ),
                Text('Watch movies'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 42, bottom: 10),
            child: Row(
              children: [
                Image.network(
                  listenMusic,
                  height: 30,
                ),
                Text('  Listern to music'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String axons =
      'https://siamrath.co.th/files/styles/1140/public/img/20220907/01987e5341a4d96173c1464576bfef3dafd81559f6fb6683554a6aec6403d1e1.jpg?itok=dUWwrGZ4';
  String cpf = 'https://www.42bangkok.com/wp-content/uploads/2021/11/CPF.png';

  workplace() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.network(
                axons,
                height: 125,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.network(
                cpf,
                height: 105,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text(
            'Currently, I working for CPF IT Center (AXONS) in fullstack developer position',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: SizedBox(
            width: 320,
            height: 2,
            child: Container(
              color: Colors.black12,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            'About My Work',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'I develope application in Farm Business Delivery team. the application support farmer, researcher, husbandry. that application about breeding chicken for the best food we made.',
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Experience',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'I used to do a cooperative at Efin X Company Limited which work about Fintech. I worked for web developer that display about stock derivatives in realtime and make algorithm to decide and notifly about buy, sell sign (butterfly algorithm).',
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'I used to join ACM competitive thailand 2019, online round.',
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: SizedBox(
            width: 320,
            height: 2,
            child: Container(
              color: Colors.black12,
            ),
          ),
        ),
        Container(
          width: 290,
          margin: EdgeInsets.only(left: 40, top: 20),
          alignment: Alignment.center,
          child: Text(
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            'If you can control the situation, That means you will not get any better.',
          ),
        ),
      ],
    );
  }

  education() {
    String secondarySchool =
        'https://upload.wikimedia.org/wikipedia/th/thumb/5/58/Logo-BDS-bws1.png/300px-Logo-BDS-bws1.png';
    String bachelorDegree =
        'https://www.src.ku.ac.th/info/images/LogoKU/KUSRC.png';
    String degree1 =
        'https://media.istockphoto.com/id/1307736694/vector/academic-education-icon-on-a-white-background.jpg?s=612x612&w=0&k=20&c=7KiaeOdysggQWjjHVESFJHvCxJdpsb5AOUJtXcoEuUs=';
    String degree2 =
        'https://media.istockphoto.com/id/1283581279/th/%E0%B9%80%E0%B8%A7%E0%B8%84%E0%B9%80%E0%B8%95%E0%B8%AD%E0%B8%A3%E0%B9%8C/%E0%B8%AB%E0%B8%A1%E0%B8%A7%E0%B8%81%E0%B8%AA%E0%B9%8D%E0%B8%B2%E0%B9%80%E0%B8%A3%E0%B9%87%E0%B8%88%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B9%84%E0%B8%AD%E0%B8%84%E0%B8%AD%E0%B8%99%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%81%E0%B8%B2%E0%B8%A8%E0%B8%99%E0%B8%B5%E0%B8%A2%E0%B8%9A%E0%B8%B1%E0%B8%95%E0%B8%A3.jpg?s=612x612&w=0&k=20&c=wc5XmuaG1wS2P9IV9qqysTv6_eFQZnGX_pT2yD7GM4U=';
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'My Education ',
                style: TextStyle(fontSize: 20),
              ),
              Icon(
                Icons.school_outlined,
                size: 30,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Image.network(
            secondarySchool,
            scale: 2.5,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          child: Text(
            'My secondary school is B.D.S stands for Bodindecha (Sing Singhaseni) Samutprakarn. I study in science and mathematics program for 6 year (2012 - 2018)',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Image.network(
            bachelorDegree,
            scale: 10,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          child: Text(
            'Bachelor Degree I study in Kasetsart University Sri Racha campus (KU SRC) I study in Bachelor of Science (B. Sc.) and I graduate in April 2022 (2018 - 2022)',
            textAlign: TextAlign.center,
          ),
        ),
        Divider(
          color: Colors.black54,
          indent: 15,
          endIndent: 15,
          thickness: 2,
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'In The Future ',
                style: TextStyle(fontSize: 20),
              ),
              FaIcon(FontAwesomeIcons.school),
            ],
          ),
        ),
        Row(
          children: [
            Image.network(
              degree1,
              scale: 3,
            ),
            Image.network(
              degree2,
              scale: 5,
            ),
          ],
        ),
        Text(
            '''        In the future I want to study in master degree maybe in thai or oversea and if I can graduate in master degree I will continue for Ph.D. I hope the dream come true :).
        I hope I can make my parent pround of me. I want to be a good guy who can take care of family.'''),
      ],
    );
  }

  tool() {
    String dartLogo =
        'https://raw.githubusercontent.com/github/explore/bbd48b997e8d0bef63f676eca4da5e1f76487b56/topics/dart/dart.png';
    String futterLogo =
        'https://raw.githubusercontent.com/github/explore/bbd48b997e8d0bef63f676eca4da5e1f76487b56/topics/flutter/flutter.png';
    String dotnetLogo =
        'https://raw.githubusercontent.com/github/explore/bbd48b997e8d0bef63f676eca4da5e1f76487b56/topics/dotnet/dotnet.png';
    String oracleLogo =
        'https://raw.githubusercontent.com/github/explore/902a8a38f1e277eb27d2a10ab95a3d524a6ea22f/topics/oracle-database/oracle-database.png';
    String azureLogo =
        'https://raw.githubusercontent.com/github/explore/bbd48b997e8d0bef63f676eca4da5e1f76487b56/topics/azure/azure.png';
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10),
          child: Text('My tools'),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                dartLogo,
                scale: 2.5,
              ),
              Image.network(
                futterLogo,
                scale: 2.5,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'I use Dart & Futter for Fontend Develop.',
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Image.network(
            dotnetLogo,
            scale: 2,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'DotNet (Core) for Backend Develop.',
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Image.network(
            oracleLogo,
            scale: 2,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'I use Oracle Database for storage.',
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Image.network(
            azureLogo,
            scale: 2,
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Microsoft Azure for cloud server.',
          ),
        ),
        Divider(
          thickness: 1,
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 20),
          child: Text(
            'I hope I can be expert soon ;)',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
