// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_6419c10008/views/search_ui.dart';

class MyProfileUI extends StatefulWidget {
  const MyProfileUI({super.key});

  @override
  State<MyProfileUI> createState() => _MyProfileUIState();
}

class _MyProfileUIState extends State<MyProfileUI> {
  final List<String> _petimages = [
    "assets/images/pet1.jpg",
    "assets/images/pet2.jpg",
    "assets/images/pet3.jpg",
    "assets/images/pet4.jpg",
    "assets/images/pet5.jpg",
    "assets/images/pet6.jpg",
    "assets/images/pet7.jpg",
    "assets/images/pet8.jpg",
    "assets/images/pet9.jpg",
    "assets/images/pet10.jpg",
    "assets/images/pet11.jpg",
    "assets/images/pet12.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    style: GoogleFonts.kanit(color: Colors.black),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 242, 242, 242),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                        ),
                      ),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.01,
                ),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.15,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.5,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                Text(
                  'ChamP',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.10,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.01,
                ),
                Text(
                  'Ekkanut Prasitthiyannawong',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                Text(
                  'ID: 6419C10008',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.03,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'FOLLOW ME',
                      style: GoogleFonts.kanit(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.03,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.008,
                      ),
                      foregroundColor: Colors.amber,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchUI(),
                          ));
                    },
                    child: Text(
                      'SEARCH',
                      style: GoogleFonts.kanit(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.03,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.77,
                  child: GridView.builder(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                      bottom: MediaQuery.of(context).size.width * 0.03,
                    ),
                    physics: ScrollPhysics(),
                    itemCount: _petimages.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Image.asset(
                          _petimages[index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
