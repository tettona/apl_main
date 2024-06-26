import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _profileImageUrl = 'assets/images/zeta.png';
  bool _isPersonalDataSelected = true;

  void _changeProfileImage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Ubah Foto Profil'),
          content: Text('Apakah Anda ingin mengganti foto profil?'),
          actions: <Widget>[
            TextButton(
              child: Text('Tidak'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Ya'),
              onPressed: () {
                setState(() {
                  _profileImageUrl = 'https://www.example.com/new_profile.jpg';
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildPersonalDataForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromRGBO(31, 233, 255, 1),
                ),
                hintText: "Nama Pengguna",
                hintStyle: TextStyle(
                    color: Color.fromRGBO(131, 131, 131, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromRGBO(31, 233, 255, 1)))),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    color: Color.fromRGBO(131, 131, 131, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color.fromRGBO(31, 233, 255, 1),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromRGBO(31, 233, 255, 1)))),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Nomor Telepon (Whatsapp)',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(131, 131, 131, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Color.fromRGBO(31, 233, 255, 1),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromRGBO(31, 233, 255, 1)))),
          ),
        ),
      ],
    );
  }

  Widget _buildSecurityForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Kata Sandi Baru',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(131, 131, 131, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromRGBO(31, 233, 255, 1),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromRGBO(31, 233, 255, 1)))),
            obscureText: true,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Konfirmasi Kata Sandi',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(131, 131, 131, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color.fromRGBO(31, 233, 255, 1),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromRGBO(31, 233, 255, 1)))),
            obscureText: true,
          ),
        ),
      ],
    );
  }

  Widget _buildToggleButton(
      String text, bool isSelected, VoidCallback onPressed) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 250, 253, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(246, 250, 253, 1),
        title: Row(
          children: [
            IconButton(
              icon:
                  Image(image: AssetImage("assets/images/letsicons_back.png")),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Text(
                'Pengaturan Akun',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                // Add navigation logic for the next page here
              },
            ),
          ],
        ),
        automaticallyImplyLeading: false, // Hide the default leading icon
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              GestureDetector(
                onTap: _changeProfileImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/zeta.png"),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildToggleButton(
                    'Data Pribadi',
                    _isPersonalDataSelected,
                    () {
                      setState(() {
                        _isPersonalDataSelected = true;
                      });
                    },
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.black,
                  ),
                  _buildToggleButton(
                    'Keamanan',
                    !_isPersonalDataSelected,
                    () {
                      setState(() {
                        _isPersonalDataSelected = false;
                      });
                    },
                  ),
                ],
              ),
              _isPersonalDataSelected
                  ? _buildPersonalDataForm()
                  : _buildSecurityForm(),
            ],
          ),
        ),
      ),
    );
  }
}
