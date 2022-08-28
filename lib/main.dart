import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['Phone Number', 'Email', 'Password'];
    final List<String> subEntries = <String>[
      '01148472090',
      'bodykh@gmail.com',
      '***********'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('iTi 1st Lab'),
          backgroundColor: Colors.yellow,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 15.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/myphoto.jpg"),
                radius: 50.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
              child: Text("Abdulrhman Khaled",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              height: 230.0,
              child: ListView.separated(
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    trailing: const Icon(Icons.edit),
                    title: Text(
                      entries[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(subEntries[index],
                        style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      height: 0.0,
                      thickness: 1.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
              child: Text("Logout",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 0.0),
              child: Divider(
                color: Colors.red,
                thickness: 3.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
