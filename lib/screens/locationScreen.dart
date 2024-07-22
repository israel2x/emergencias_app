import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  //const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late double latitude;
  late double longitude;

  @override
  void initState() {
    super.initState();
    print("INICIAR APLICACION");
  }

  void getMyPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);

    print(position.latitude);
    print(position.longitude);

    latitude = position.latitude;
    longitude = position.longitude;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("SOLICITAR AYUDA A LOS "),
              ElevatedButton(
                  onPressed: () {
                    getMyPosition();
                    print("bomberos");
                  },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(60),
                      elevation: 11,
                      backgroundColor: Color.fromARGB(255, 196, 101, 13)),
                  child: Text(
                    "BOMBEROS",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    getMyPosition();
                  },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(100),
                      elevation: 10,
                      backgroundColor: Color.fromARGB(255, 246, 48, 48)),
                  child: Text(
                    "POLICIA",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("EMERGENCIAS MÉDICAS"),
              ElevatedButton(
                  onPressed: () {
                    getMyPosition();
                  },
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(60),
                      elevation: 12,
                      backgroundColor: Color.fromARGB(255, 25, 107, 213)),
                  child: Text(
                    "AMBULANCIA",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
