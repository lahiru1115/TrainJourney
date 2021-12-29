import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gpsd/auth/sign_in.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final email = FirebaseAuth.instance.currentUser!.email;
  final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

  User? user = FirebaseAuth.instance.currentUser;

  verifyEmail() async {
    if (user != null && !user!.emailVerified) {
      await user!.sendEmailVerification();
      print('Verification is Sent');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black26,
          content: Text(
            'Verification is Sent',
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Details"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          children: [
            // StreamBuilder(
            // stream: FirebaseFirestore.instance.collection('name').snapshots(),
            // builder: (context, AsyncSnapshot<QuerySnapshot> snapshop) {
            //   return container(
            //     children: snapshop.data!.docs.map((data) {

            //         child: Column(

            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text('Name: ' + data['field1']),
            //           ],
            //         ),
            //       );
            //     }).toList(),
            //   );
            // }),
            Column(
              children: [
                Text(
                  'User ID',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  uid,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Email:$email',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                user!.emailVerified
                    ? Text(
                        'Verified',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    : TextButton(
                        onPressed: () => {
                          verifyEmail(),
                        },
                        child: Text(
                          'Verify Email',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Created',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  creationTime.toString(),
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                      (route) => false);
                },
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
