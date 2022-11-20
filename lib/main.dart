// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

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
      'https://i.dlpng.com/static/png/5459272-games-games-icon-circle-png-free-transparent-png-download-pngkey-circle-game-png-820_730_preview.png';
  String watchSeries =
      'https://toppng.com/uploads/preview/netflix-logo-png-11593869496jqso5gxgsy.png';
  String listenMusic = 'https://cdn-icons-png.flaticon.com/512/3844/3844724.png';
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(widget.title),
        ),
      ),
      body: SingleChildScrollView(
        child: indexSelected == 3
            ? Container(
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
                      margin: EdgeInsets.only(left: 35, bottom: 10),
                      child: Row(
                        children: [
                          Image.network(
                            playGames,
                            height: 40,
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
                            height: 45,
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
              )
            : Container(),
      ),
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
}
