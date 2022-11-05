//deep
//import 'package:drfriemdg/main.dart';
//import 'package:drfriemdg/screen/forgetscr.dart';
//import 'package:drfriemdg/screen/regstrscr.dart';



import 'package:docfriend/screen/regstrscr.dart';
import 'package:flutter/material.dart';

import '../main.dart';

void main() => runApp(const signinscr());

class signinscr extends StatelessWidget {
  const signinscr({key}) : super(key: key);

  static const String _title = 'docbox sign in';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        accentColor: Colors.blueGrey,
        fontFamily: 'Georgia',

        //text styling
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 52.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 202, 199, 199),
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

//main padding
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                // obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(15),
                  )),
                  labelText: 'email address',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                //controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(15),
                  )),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                //controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(15),
                  )),
                  labelText: 'confirm password',
                ),
              ),
            ),
            Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                child: ElevatedButton(
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                        //color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Color.fromARGB(255, 35, 31, 80),
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) => regstrscr()));
                    //on press
                  },
                )),
          ],
        ));
  }
}
