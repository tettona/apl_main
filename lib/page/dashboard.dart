import 'package:apl_main/detailPerangkat/deviceDinom.dart';
import 'package:apl_main/page/notifikasi.dart';
import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(246, 250, 253, 1),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 20, 15, 30),
            child: Row(
              children: [
                Text(
                  "Pilih Perangkat ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => notifikasi()),
                    );
                  },
                  child: Icon(
                    Icons.email_outlined,
                    size: 35,
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Icon(
                  Icons.add,
                  color: Color.fromRGBO(31, 233, 255, 1),
                  size: 36,
                )
              ],
            ),
          ),
          boxPackage(),
        ]));
  }
}

class boxPackage extends StatelessWidget {
  const boxPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => deviceDinom()),
            );
          },
          child: Container(
            margin: EdgeInsets.only(top: 15),
            width: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Container(
              margin: EdgeInsets.all(20),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                  radius: 25,
                  child: Image(
                      image: AssetImage("assets/images/mailbox_flag.png"),
                      height: 30),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "M3352",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      Text("Jl. Ahmad Yani, Tlk. Tering, Kec. Batam ...")
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
