import 'package:flutter/material.dart';
class BookCottage extends StatelessWidget {
  const BookCottage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.red,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Cottage Book", style: TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.white,

      body: Center(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Image(
                      image: AssetImage('assets/images/logo.jpg'),
                      height: 300,
                      width: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text("Fill the form for instant booking",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ],
              )
          ),
        ),
      ),
    );
  }
}
