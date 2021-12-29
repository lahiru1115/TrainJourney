import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DelayGmp extends StatefulWidget {
  const DelayGmp({Key? key}) : super(key: key);
  _DelayGmpState createState() => _DelayGmpState();
}

class _DelayGmpState extends State<DelayGmp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Train Delays"),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('Delay/gampaha/Docs')
                  .where('date', isEqualTo: '2021-10-27')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshop) {
                return ListView(
                  children: snapshop.data!.docs.map((data) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.black38),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8)),
                              color: Colors.green[200],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Gampaha to ' + data['destination'],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  data['departureTime'],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    data['trainType'].toString().toUpperCase() +
                                        ' Train (' +
                                        data['trainName'] +
                                        ')',
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                                Padding(padding: EdgeInsets.only(bottom: 5)),
                                Text(
                                  'Delayed at ' +
                                      data['delayTime'] +
                                      ' due to ' +
                                      data['reason'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                );
              }),
        ),
      ),
    );
  }
}
