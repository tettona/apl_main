import 'package:apl_main/praLogin/login.dart';
import 'package:apl_main/praLogin/register.dart';
import 'package:flutter/material.dart';

class praLogin extends StatelessWidget {
  const praLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomRight,
              colors: [Color.fromRGBO(219, 252, 242, 1), Colors.white60]),
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              alignment: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Image(
                        image: AssetImage("assets/images/logodinom.png"))),
                Text("Terima Paket",
                    style: TextStyle(letterSpacing: 4, fontSize: 19)),
                Text("Tanpa Ribet",
                    style: TextStyle(letterSpacing: 4, fontSize: 19))
              ],
            ),
            SizedBox(
              height: 160,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.fromLTRB(45, 200, 45, 6),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const login(),
                      ));
                },
                child: Text("Masuk",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(31, 233, 255, 1),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Container(
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.transparent)),
              margin: EdgeInsets.fromLTRB(45, 6, 45, 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const register(),
                      ));
                },
                child: Text("Buat Akun?",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Color.fromRGBO(31, 233, 255, 1)),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
