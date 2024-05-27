import 'package:flutter/material.dart';

class notifikasi extends StatefulWidget {
  const notifikasi({super.key});

  @override
  State<notifikasi> createState() => _notifikasiState();
}

class _notifikasiState extends State<notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 250, 253, 1),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
              Text(
                "Notikasi",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.filter_list)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            "Belum dibaca",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        notifBox(),
        notifBox(),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 40, 12, 12),
          child: Text(
            "Pemberitahuan Sebelumnya",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        notifBox(),
        notifBox(),
        notifBox(),
        notifBox(),
        notifBox()
      ]),
    );
  }
}

class notifBox extends StatelessWidget {
  const notifBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 90,
      margin: EdgeInsets.fromLTRB(20, 6, 20, 6),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                foregroundColor: Color.fromRGBO(31, 233, 255, 1),
                child: Icon(
                  Icons.circle_notifications_outlined,
                  size: 52,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 20, 0, 0),
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ada yang menekan tombol kotak       ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      " paket Anda, segera lihat!",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Positioned(
                    left: 185,
                    bottom: 10,
                    child: Text(
                      "21/03/2024",
                      style: TextStyle(fontSize: 13),
                    ))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
