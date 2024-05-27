import 'package:apl_main/praLogin/login.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  String _password = '';
  String _konfirm = '';
  bool _isPasswordVisible = false;
  bool _isKonfirmVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      body: ListView(
        children: [
          Center(
            child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image(image: AssetImage("assets/images/logodinom.png"))),
          ),
          Container(
            width: 300,
            height: 370,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            padding: EdgeInsets.fromLTRB(20, 35, 20, 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Nama Pengguna",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(31, 233, 255, 1)))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(31, 233, 255, 1)))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(31, 233, 255, 1))),
                    hintText: "Kata Sandi",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText:
                      !_isPasswordVisible, // Use obscureText with the toggle state
                  onChanged: (value) {
                    _password = value;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Color.fromRGBO(31, 233, 255, 1))),
                    hintText: "Kata Sandi",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isKonfirmVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isKonfirmVisible = !_isKonfirmVisible;
                        });
                      },
                    ),
                  ),
                  obscureText:
                      !_isKonfirmVisible, // Use obscureText with the toggle state
                  onChanged: (value) {
                    _konfirm = value;
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.fromLTRB(45, 10, 45, 0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const login(),
                    ));
              },
              child: Text("Buat Akun!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(31, 233, 255, 1),
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sudah punya akun?",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.4))),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const login(),
                        ));
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                        color: Color.fromRGBO(31, 233, 255, 1), fontSize: 16),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
