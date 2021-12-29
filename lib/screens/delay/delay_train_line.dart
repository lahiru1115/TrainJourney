import 'package:flutter/material.dart';
import 'package:gpsd/screens/delay/delay_costal_line.dart';
import 'package:gpsd/screens/delay/delay_main_line.dart';
import 'package:gpsd/screens/singal/loading.dart';

class DelayTrainLine extends StatefulWidget {
  DelayTrainLine({Key? key}) : super(key: key);
  @override
  _DelayTrainLineState createState() => _DelayTrainLineState();
}

class _DelayTrainLineState extends State<DelayTrainLine> {
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
          title: Text("Select Train Line"),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return DelayMainLine();
                    }));
                  },
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Main Line",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return DelayCostalLine();
                    }));
                  },
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Coastal Line",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Loading();
                    }));
                  },
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Puttalam Line",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Loading();
                    }));
                  },
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Kelani Valley Line",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
