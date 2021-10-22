import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("New App Testing"),
          centerTitle: true,
          backgroundColor: Colors.black26,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80.0,
                  // backgroundColor: Colors.brown.shade800,
                  backgroundImage: AssetImage("assets/images/khaled.jpg"),
                  // child: const Text('khaled'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Khaled Yassin",
                  // textScaleFactor: 2,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 10.0),
                child: Text(
                  "Flutter trainiee",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: SizedBox(
              //       width: 100,
              //       height: 100,
              //       child: Image(
              //           image: NetworkImage(
              //               "https://image.shutterstock.com/image-vector/premium-reward-batch-260nw-1097010053.jpg"))),
              // ),
              // Builder(builder: (context) {
              //   return const Text.rich(
              //     TextSpan(
              //       children: <TextSpan>[
              //         TextSpan(
              //             text: "Hello ",
              //             style: TextStyle(fontStyle: FontStyle.italic)),
              //         TextSpan(
              //             text: "World",
              //             style: TextStyle(fontWeight: FontWeight.bold)),
              //       ],
              //     ),
              //   );
              // }),
              // const Icon(Icons.email),
              // Container(
              //   child: Image.asset("assets/images/sea.jpg"),
              //   alignment: AlignmentDirectional.bottomCenter,
              //   height: 150,
              //   width: 350,
              // ),
              // ConstrainedBox(
              //   child: Image.asset("images/aboyassin.jpg"),
              //   constraints: BoxConstraints(maxHeight: 150, maxWidth: 150),

              // ),

              CardContact(
                  contactTitle: "+201124288791",
                  url: "tel: +201124288791",
                  iconData: Icons.phone),
              CardContact(
                  contactTitle: "Khaled.yassin1990@gmail.com",
                  url: "mailto:Khaled.yassin1990@gmail.com ",
                  iconData: Icons.email),
              CardContact(
                  contactTitle: "Khaled Yassin_github",
                  url: "https://github.com/1990khaled",
                  iconData: FontAwesomeIcons.github),
              CardContact(
                  contactTitle: "khaled yassin_facebook",
                  url: "https://www.facebook.com/khaled.yassin.7739814",
                  iconData: FontAwesomeIcons.facebook),
            ],
          ),
        ),
      ),
    );
  }
}

class CardContact extends StatelessWidget {
  final String contactTitle, url;
  final iconData;
  CardContact(
      {required this.contactTitle, required this.url, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      margin: const EdgeInsets.all(8),
      color: Colors.black38,
      child: ListTile(
        title: Text(contactTitle,
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        onTap: () {
          _launchURL(url);
        },
        leading: Icon(
          iconData,
          color: Colors.black,
          size: 27,
        ),
      ),
    );
  }
}
