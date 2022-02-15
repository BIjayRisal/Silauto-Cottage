import 'package:flutter/material.dart';
import 'package:silauto_cottage/booking_pages/cottage_book.dart';
import 'package:silauto_cottage/booking_pages/meetingHall_book.dart';
import 'package:silauto_cottage/booking_pages/seminar_book.dart';
import 'package:silauto_cottage/booking_pages/table_book.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),

    child: Column(
      children: [
        SizedBox(
          height: 200,
          child: Image(
            image: AssetImage('assets/images/logo.jpg'),
            height: 280,
            width: 300,
            fit: BoxFit.contain,
          ),
        ),
        Text("Book with your requirements",
        style: TextStyle(
          fontSize: 20,

        ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Container(

              margin: EdgeInsets.only(left: 20, top: 20),
              child: Container(
                width: 180,
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.red,
                  child: (
                  Column(
                    children: [
                      Text("Table", style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Icon(
                        Icons.chair,
                        color: Colors.white,
                        size: 150.0,
                      ),
                    ],
                  )
                  ),
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TableBook()));
            },
          ),
          Container(
            child: InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 180,
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.red,
                  child: (
                      Column(
                        children: [
                          Text("Cottage", style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Icon(
                            Icons.meeting_room,
                            color: Colors.white,
                            size: 150.0,
                          ),
                        ],
                      )
                  ),

                ),

              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BookCottage()));
              },
            ),
          ),
        ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: InkWell(
                child: Container(
                  width: 180,
                  height: 200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.red,
                    child: (
                        Column(
                          children: [
                            Text("Meeting hall", style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Icon(
                              Icons.meeting_room_outlined,
                              color: Colors.white,
                              size: 150.0,
                            ),
                          ],
                        )
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MeetingHallBook()));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: InkWell(
                child: Container(
                  width: 180,
                  height: 200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.red,
                    child: (
                        Column(
                          children: [
                            Text("Seminars", style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Icon(
                              Icons.people,
                              color: Colors.white,
                              size: 150.0,
                            ),
                          ],
                        )
                    ),
                  ),

                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SeminarBook()));
                },
              ),
            ),
          ],
        ),
      ],
    ),

    );

  }
}
