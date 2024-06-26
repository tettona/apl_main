import 'package:apl_main/page/dashboard.dart';
import 'package:apl_main/page/profile.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentTab = 0;
  final List<Widget> screens = [dashboard(), profile()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = dashboard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircleAvatar(
        radius: 30,
        child: FloatingActionButton(
          onPressed: () async {
            scanner.scan();
            setState(() {});
          },
          child: Icon(
            Icons.qr_code_scanner,
            size: 35,
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          notchMargin: 5.0,
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = dashboard();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 35,
                        color: Color.fromRGBO(31, 233, 255, 1),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = profile();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        size: 38,
                        Icons.account_circle,
                        color: Color.fromRGBO(31, 233, 255, 1),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
