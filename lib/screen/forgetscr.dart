import 'package:flutter/material.dart';

import '../main.dart';

void main() => runApp(const forgetscr());

class forgetscr extends StatelessWidget {
  const forgetscr({key}) : super(key: key);

  static const String _title = 'forget screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
       theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 50, 53, 85),
        fontFamily: 'Georgia',
       ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 213, 214, 215),
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
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(15),
                  )),
                  labelText: 'docfriend@example.com',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                 primary: Color(0xff172C36),
                 // backgroundColor: Color.fromARGB(255, 23, 44, 54),
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'georgia'),
                ),
                child: const Text('Generate OTP'),
                onPressed: () {
                  showAlertDialog(context);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(15),
                  )),
                  labelText: 'enter your otp',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(250, 10, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    
                    primary : Color(0xFf172C36),
                    //backgroundColor: Color.fromARGB(255, 23, 44, 54),
                  ),
                  child: const Text('Submit'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
          ],
        ));
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("OTP alert"),
          content: Text("OTP has been send to your desired email"),
          actions: [
            okButton,
          ],
        );
      },
    );
  }
}
