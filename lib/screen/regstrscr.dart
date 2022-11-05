//import 'package:docfriend/screen/testscr.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'package:docfriend/screen/bookscr.dart';

void main() => runApp(const regstrscr());

class regstrscr extends StatelessWidget {
  const regstrscr({key}) : super(key: key);

  static const String _title = 'Registration';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 50, 53, 85),
        fontFamily: 'Georgia',
       ),/*,,*/
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 204, 203, 203),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Color.fromARGB(255, 111, 113, 215)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
          ),
          title: Text(_title),
          /*leading: GestureDetector(
            onTap: () {},
            child: Icon(Icons.menu),
          ),*/
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    //back screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back,
                  ),
                )),
          ],
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                //controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(15),
                  )),
                  labelText: 'Doctor code',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                //controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(15),
                  )),
                  labelText: 'desease name:',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                // controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(15),
                  )),
                  labelText: 'hospital name:',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(250, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary : Color(0xff172C36),
                    //backgroundColor: Color.fromARGB(255, 53, 53, 73),
                  ),
                  child: const Text('Submit'),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bookscr()),
                        
                     );


                  },
                )),
          ],
        ));
  }
}
