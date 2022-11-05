import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(bookscr());
}
class bookscr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => mystate();
}

class mystate extends State<bookscr> {
  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff053F5E),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
       
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              decoration: BoxDecoration(
                  color: Color(0xff053F5E),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
              ),
              child: Container(
                margin: EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      // child: Image.asset(
                      //   "assets/dr_details.png",
                      // ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         
                          
                         
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),



            Container(
              
              margin: EdgeInsets.only(left: 40, top: 30),
              child: Text('november 2023',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  demoDates("Mon", "14", true),
                  demoDates("Tue", "15", false),
                  demoDates("Wed", "16", false),
                  demoDates("Thur", "17", false),
                  demoDates("Fri", "18", false),
                  demoDates("Sat", "19", false),
                  demoDates("Sun", "20", false),
                  demoDates("Mon", "21", false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text('Morning',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.7,
                children: [
                  doctorTimingsData("08:30 AM", true),
                  doctorTimingsData("08:45 AM", false),
                  doctorTimingsData("09:00 AM", false),
                  doctorTimingsData("09:15 AM", false),
                  doctorTimingsData("09:30 AM", false),
                  doctorTimingsData("09:45 AM", false),
                  doctorTimingsData("10:00 AM", false),
                  doctorTimingsData("10:15 AM", false),
                  doctorTimingsData("10:30 AM", false),
                  doctorTimingsData("10:45 AM", false),
                  doctorTimingsData("11:00 AM", false),
                  doctorTimingsData("11:30 AM", false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 30),
              child: Text('Evening',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.6,
                children: [
                  doctorTimingsData("08:30 AM", true),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 54,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff172C36),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x17000000),
                    offset: Offset(0, 15),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary : Color(0xff172C36),
                    //backgroundColor: Color.fromARGB(255, 53, 53, 73),
                  ),
              child: Text(
                'Make An Appointment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
               onPressed: () {
                     showAlertDialog(context);
                        
                    


                  },
            ),)
          ],
        ),
      ),
    );
  }

  Widget demoDates(String day, String date, bool isSelected) {
    return isSelected ? Container(
      width: 70,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color:  Color(0xff053F5E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            child: Text(
              date,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    ) : Container(
          width: 70,
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  day,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(7),
                child: Text(
                  date,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
      );
  }

  Widget doctorTimingsData(String time, bool isSelected) {
    return isSelected ? Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        color:  Color(0xff053F5E),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text('08:31 AM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    ) : Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        color: Color(0xffEEEEEE),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.black,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text('08:30 AM',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
      
    );
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
          title: Text("appointment set"),
          content: Text("message for your appointment is sent to your device"),
          actions: [
            okButton,
            
          ],
        );
      },
    );
  }
}