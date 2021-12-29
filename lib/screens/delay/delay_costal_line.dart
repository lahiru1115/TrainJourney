import 'package:flutter/material.dart';
import 'package:gpsd/screens/singal/loading.dart';

class DelayCostalLine extends StatefulWidget {
  DelayCostalLine({Key? key}) : super(key: key);
  @override
  _DelayCostalLineState createState() => _DelayCostalLineState();
}

class _DelayCostalLineState extends State<DelayCostalLine> {
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
          title: Text("Select Station"),
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
                      return Loading();
                    }));
                  },
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Colombo Fort",
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
                        "Secretariat Halt",
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
                        "Kompanna Vidiya",
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
                        "Kollupitiya",
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
                        "Bambalapitiya",
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
                        "Wellawatta",
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
                        "Dehiwela",
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
                        "Mount Lavinia",
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
                        "Ratmalana",
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
