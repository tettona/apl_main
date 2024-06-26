import 'package:apl_main/page/settingDinom.dart';
import 'package:apl_main/praLogin/login.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  // Function to log out the user
  void _logout(BuildContext context) async {
    // Show a confirmation dialog
    bool confirmLogout = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color.fromRGBO(248, 248, 248, 1),
          title: Text('Konfirmasi Keluar'),
          content: Text('Apakah Anda yakin ingin keluar?'),
          actions: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(232, 232, 232, 1))),
              onPressed: () {
                // Jika pengguna memilih "Ya", set nilai true
                Navigator.of(context).pop(true);
              },
              child: Text('Ya', style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(232, 232, 232, 1))),
              onPressed: () {
                // Jika pengguna memilih "Tidak", set nilai false
                Navigator.of(context).pop(false);
              },
              child: Text(
                'Tidak',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        );
      },
    );
    // Jika pengguna mengkonfirmasi keluar, hapus data login dan navigasikan ke halaman login
    if (confirmLogout == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(246, 250, 253, 1),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  width: 500,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.white, Colors.black],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                ),
                SizedBox(
                  height: 65,
                ),
                Text(
                  "Vestia Zeta",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(226, 234, 253, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "vestiazeta2201@gmail.com",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Align(
                alignment: Alignment(0, -0.65),
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.black87,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/zeta.png"))),
                    ),
                    radius: 50,
                  ),
                )),
            Positioned(
              top: 360,
              child: Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SettingsPage(),
                            ));
                      },
                      child: Container(
                          margin: EdgeInsets.all(10),
                          width: 370,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 15, left: 20),
                                child: Icon(
                                  Icons.settings,
                                  color: Color.fromRGBO(31, 233, 255, 1),
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 135),
                                child: Text(
                                  "Pengaturan Akun",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromRGBO(216, 215, 219, 1),
                                size: 30,
                              )
                            ],
                          )),
                    ),
                    Container(
                        margin: EdgeInsets.all(10),
                        width: 370,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, left: 20),
                              child: Icon(
                                Icons.description_sharp,
                                color: Color.fromRGBO(31, 233, 255, 1),
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 135),
                              child: Text(
                                "Panduan Aplikasi",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color.fromRGBO(216, 215, 219, 1),
                              size: 30,
                            )
                          ],
                        )),
                    GestureDetector(
                      onTap: () => _logout(context),
                      child: Container(
                          margin: EdgeInsets.all(10),
                          width: 370,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 15, left: 20),
                                child: Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 210),
                                child: Text(
                                  "Keluar",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromRGBO(216, 215, 219, 1),
                                size: 30,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
