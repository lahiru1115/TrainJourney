import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:location/location.dart' as loc;
import 'package:gpsd/screens/location/mymap.dart';
import 'dart:async';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final loc.Location location = loc.Location();
  StreamSubscription<loc.LocationData>? _locationSubscription;

  @override
  void initState() {
    super.initState();
    _requestPermission();
    location.changeSettings(interval: 300, accuracy: loc.LocationAccuracy.high);
    location.enableBackgroundMode(enable: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select Train'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              // Container(
              //   margin: EdgeInsets.only(bottom: 20),
              //   child: Column(
              //     children: [
              //       ElevatedButton(
              //         onPressed: () {
              //           _getLocation();
              //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //             backgroundColor: Colors.blue.shade700,
              //             content: Text("Location Added",
              //                 style:
              //                     TextStyle(color: Colors.white, fontSize: 20)),
              //           ));
              //         },
              //         child: Text(
              //           'Add My Location',
              //           style: TextStyle(color: Colors.white, fontSize: 18),
              //         ),
              //         style: ElevatedButton.styleFrom(
              //             primary: Colors.purple,
              //             fixedSize: const Size(280, 40),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(5))),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {
              //           _listenLocation();
              //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //             backgroundColor: Colors.green.shade700,
              //             content: Text("Enabled Live Location",
              //                 style:
              //                     TextStyle(color: Colors.white, fontSize: 20)),
              //           ));
              //         },
              //         child: Text(
              //           'Enable Live Location',
              //           style: TextStyle(color: Colors.white, fontSize: 18),
              //         ),
              //         style: ElevatedButton.styleFrom(
              //             primary: Colors.purple,
              //             fixedSize: const Size(280, 40),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(5))),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {
              //           _stopListening();
              //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //             backgroundColor: Colors.red.shade700,
              //             content: Text("Stopped Live Location",
              //                 style:
              //                     TextStyle(color: Colors.white, fontSize: 20)),
              //           ));
              //         },
              //         child: Text('Stop Live Location',
              //             style: TextStyle(color: Colors.white, fontSize: 18)),
              //         style: ElevatedButton.styleFrom(
              //             primary: Colors.purple,
              //             fixedSize: const Size(280, 40),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(5))),
              //       ),
              //     ],
              //   ),
              // ),
              Expanded(
                  child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('Location')
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return ListView.builder(
                      itemCount: snapshot.data?.docs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(snapshot.data!.docs[index]['name']
                                    .toString()),
                                subtitle: Row(
                                  children: [
                                    Text(snapshot.data!.docs[index]['latitude']
                                        .toString()),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(snapshot.data!.docs[index]['longitude']
                                        .toString()),
                                  ],
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.directions),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => MyMap(snapshot
                                                .data!.docs[index].id)));
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Podi Menike'),
                                subtitle: Row(
                                  children: [
                                    Text('7.254628'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('80.171240'),
                                  ],
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.directions),
                                  onPressed: () {},
                                ),
                              ),
                              ListTile(
                                title: Text('Yal Devi'),
                                subtitle: Row(
                                  children: [
                                    Text('8.300143'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('80.377318'),
                                  ],
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.directions),
                                  onPressed: () {},
                                ),
                              ),
                              ListTile(
                                title: Text('Colombo Commuter'),
                                subtitle: Row(
                                  children: [
                                    Text('7.142103'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('80.048111'),
                                  ],
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.directions),
                                  onPressed: () {},
                                ),
                              ),
                              ListTile(
                                title: Text('Ruhunu Kumari'),
                                subtitle: Row(
                                  children: [
                                    Text('6.559408'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('79.966186'),
                                  ],
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.directions),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
              )),
            ],
          ),
        ));
  }

  _getLocation() async {
    try {
      final loc.LocationData _locationResult = await location.getLocation();
      await FirebaseFirestore.instance.collection('Location').doc('user1').set({
        'latitude': _locationResult.latitude,
        'longitude': _locationResult.longitude,
        'name': 'Udarata Menike'
      }, SetOptions(merge: true));
    } catch (e) {
      print(e);
    }
  }

  Future<void> _listenLocation() async {
    _locationSubscription = location.onLocationChanged.handleError((onError) {
      print(onError);
      _locationSubscription?.cancel();
      setState(() {
        _locationSubscription = null;
      });
    }).listen((loc.LocationData currentlocation) async {
      await FirebaseFirestore.instance.collection('Location').doc('user1').set({
        'latitude': currentlocation.latitude,
        'longitude': currentlocation.longitude,
        'name': 'Udarata Menike'
      }, SetOptions(merge: true));
    });
  }

  _stopListening() {
    _locationSubscription?.cancel();
    setState(() {
      _locationSubscription = null;
    });
  }

  _requestPermission() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      print('Done');
    } else if (status.isDenied) {
      _requestPermission();
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }
}
