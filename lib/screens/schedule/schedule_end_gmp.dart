import 'package:flutter/material.dart';
import 'package:gpsd/screens/schedule/schedule_gmp_kdy.dart';
import 'package:gpsd/screens/singal/loading.dart';

class ScheduleEndGmp extends StatefulWidget {
  ScheduleEndGmp({Key? key}) : super(key: key);
  @override
  _ScheduleEndGmpState createState() => _ScheduleEndGmpState();
}

class _ScheduleEndGmpState extends State<ScheduleEndGmp> {
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
          title: Text("Select End Station"),
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
                        "Aluthgama",
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
                        "Ambepussa",
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
                        "Badulla",
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
                        "Batticaloa",
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
                        "Galle",
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
                        "Jaffna",
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
                        "Kalutara South",
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
                      return ScheduleGmpKdy();
                    }));
                  },
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Kandy",
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
                        "Kankesanturai",
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
                        "Kurunegala",
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
                        "Maho",
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
                        "Mannar",
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
                        "Matale",
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
                        "Matara",
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
                        "Mirigama",
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
                        "Moratuwa",
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
                        "Panadura",
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
                        "Polgahawela",
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
                        "Rambukkana",
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
                        "Rathmalana",
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
                        "Talaimannar",
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
                        "Trincomalee",
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
                        "Vavuniya",
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
