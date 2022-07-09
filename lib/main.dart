import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color(0xff202124)),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff202124),
      appBar: AppBar(
        backgroundColor: Color(0xff202124),
        // toolbarHeight: 65,
        elevation: 0,
        actions: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 35, right: 35),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
                  width: 300,
                  child: Image.asset(
                    "assets/Frame 3.png",
                  ),
                ),
                Spacer(),
                Text("Blog"),
                SizedBox(width: width / 48),
                Text("Team"),
                SizedBox(width: width / 48),
                Text("Video"),
                SizedBox(width: width / 48),
                Text("Events"),
                SizedBox(width: width / 48),
                Text("Certificate")
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 40),
                    padding: EdgeInsets.all(20),
                    height: 350,
                    width: 800,
                    decoration: BoxDecoration(
                      color: Color(0xff428FFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Frame 3.png",
                          scale: 0.1,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "GDSC GHRCE is a  community group for college and university students interested in Google developer technologies. Students from all undergraduate or graduate programs with an interest in growing as a developer are welcome. By joining GDSC GHRCE, students grow their knowledge in a peer-to-peer learning environment and build solutions for local businesses and their community.",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 188, 215, 255),
                            ),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 340,
                      left: 770,
                      child: Image.asset(
                        "assets/sticker.png",
                        scale: 1.3,
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
