import 'package:docfriend/screen/forgetscr.dart';
import 'package:docfriend/screen/regstrscr.dart';
import 'package:docfriend/screen/signinscr.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'fire';



//deep laptop import 'package:docfriend/screen/regstrscr.dart';
//deep laptop import 'package:drfriemdg/screen/signinscr.dart';
import 'package:flutter/material.dart';

//void main() => runApp(const MyApp());
void main(){
  //await Firebase.initializeApp();
  runApp(MyApp());
}

/*Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  
  }
 */

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  static const String _title = 'doc box';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Color.fromARGB(255, 177, 19, 101),
        fontFamily: 'Georgia',

        //text styling
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 52.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        // colorScheme: ColorScheme.fromSwatch()
        //   .copyWith(secondary: Color.fromARGB(255, 102, 26, 26)),
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 211, 207, 207),
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
          title: Text(
            _title,
          ),
         /* leading: GestureDetector(
            onTap: () {},
            child: Icon(Icons.menu),
          ),*/
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
    return Container(
     /* decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/login.png"),
          fit: BoxFit.fill
        ),
      ),*/
          child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20, fontFamily: 'georgia'),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                      const Radius.circular(15),
                    )),
                    labelText: 'User Name',
                  ),
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
                    labelText: 'Password',
                  ),
                ),
              ),
              TextButton(
                child: const Text('Forgot Password',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 16, 69, 160),
                    )),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => forgetscr()));
                },
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                  child: ElevatedButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'georgia',
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        //primary: Color(0xFF172C36),
                        primary: Color(0xe20c1c3d),
                        //https://www.rapidtables.com/convert/color/rgb-to-hex.html
                        //deep laptop backgroundColor: Color.fromARGB(255, 23, 44, 54),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => regstrscr()));
                    },
                  )),
              Row(
                children: <Widget>[
                  const Text('Don\'t have account?'),
                  TextButton(
                    child: const Text('Sign in',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 16, 69, 160),
                        )),
                    onPressed: () {
                      //signup screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signinscr()),
                      );
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    );
  }
}
