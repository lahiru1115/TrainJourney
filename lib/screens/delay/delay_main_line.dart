import 'package:flutter/material.dart';
import 'package:gpsd/screens/delay/delay_gmp.dart';
import 'package:gpsd/screens/singal/loading.dart';

class DelayMainLine extends StatefulWidget {
  DelayMainLine({Key? key}) : super(key: key);
  @override
  _DelayMainLineState createState() => _DelayMainLineState();
}

class _DelayMainLineState extends State<DelayMainLine> {
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
                        "Maradana",
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
                        "Dematagoda",
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
                        "Kelaniya",
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
                        "Wanawasala",
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
                        "Hunupitiya",
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
                        "Ederamulla",
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
                        "Horape",
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
                        "Ragama",
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
                        "Walpola",
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
                        "Batuwaththa",
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
                        "Bulugahagoda",
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
                        "Ganemulla",
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
                        "Yagoda",
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
                      return DelayGmp();
                    }));
                  },
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Gampaha",
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
                        "Daraluwa",
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
                        "Bemmulla",
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
