import 'package:flutter/material.dart';

class TableBook extends StatelessWidget {
  const TableBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Container(
          alignment: Alignment.center,
          child: Text(
            "Table Book",
            style: TextStyle(
                color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
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
              Text(
                "Fill the form for instant booking",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Form(
                      child:ListView(
                        shrinkWrap: true,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.account_circle,
                                color: Colors.red,
                                size: 30.0,
                              ),
                              hintText: "Enter your Name",
                              labelText: "Name",
                            ),
                          ),

                          TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.phone_android_outlined,
                                color: Colors.red,
                                size: 30.0,
                              ),
                              hintText: "Enter your Phone Number",
                              labelText: "Phone Number",
                            ),
                          ),

                          
                        ],
                      ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
