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
                        color: Colors.green,
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
                            Text("Model",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Text(
                              "XZ - M3352",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w300),
                            )
                          ],
                        ))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      width: 195,
                      height: 100,
                      color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama Perangkat",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Rumah Vestia",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      width: 195,
                      height: 100,
                      color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alamat",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Jl. Ahmad Yani, Tlk. Tering, Kec. Batam ...",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      width: 195,
                      height: 100,
                      color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Terakhir Dibuka",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "12:55 WIB 04/03/2024",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("data")),
                ElevatedButton(onPressed: () {}, child: Text("data"))
              ],
            )
          ],
        ));
  }
}
