import 'package:apl_main/detailPerangkat/galeri_foto.dart';
import 'package:flutter/material.dart';

class deviceDinom extends StatefulWidget {
  const deviceDinom({super.key});

  @override
  State<deviceDinom> createState() => _deviceDinomState();
}

class _deviceDinomState extends State<deviceDinom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(246, 250, 253, 1),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image(
                          image:
                              AssetImage("assets/images/letsicons_back.png"))),
                  Text(
                    "M3352",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.filter_list,
                    color: Colors.transparent,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                        width: 195,
                        height: 320,
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                              child: Image(
                                  image: AssetImage(
                                      "assets/images/mailbox_flag.png"),
                                  height: 80),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text("Model",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              "XZ - M3352",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: 185,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Nama Perangkat",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              "Rumah Vestia",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: 185,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                            child: Text(
                              "Alamat",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              "Jl. Ahmad Yani, Tlk. Tering, Kec. Batam ...",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      width: 185,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Terakhir Dibuka",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              "12:55 WIB",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              "04/03/2024",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 180,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Buka kunci",
                              style: TextStyle(fontSize: 16),
                            ),
                            Icon(Icons.lock)
                          ],
                        ))),
                Container(
                    width: 180,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Ubah",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Icon(Icons.edit_square)
                          ],
                        )))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Container(
                    width: 370,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GalleryPage(),
                              ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Buka Galeri",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Icon(
                              Icons.photo_size_select_actual,
                              size: 30,
                            )
                          ],
                        ))))
          ],
        ));
  }
}
