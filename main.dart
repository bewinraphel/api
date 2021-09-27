import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SingleChildScrollView(child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new ExactAssetImage('assets/netflix.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45))),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 9),
                        child: TextField(
                            decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email or Number',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        )),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 9),
                        child: TextField(
                            decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email or Number',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(9),
                child: ListTile(
                  leading: Text(
                    "Login with OTP",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  trailing: Text(
                    "Forgot password?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {},
                  child: Text('LOGIN'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 300,
                  child: Center(
                    child: Text(
                      "comapany Login? click here !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 300,
                  child: Center(
                    child: Text(
                      "OR",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  )),
              Container(
                width: 300,
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: Colors.black)))),
                  onPressed: () {
                    print('done');
                  },
                  child: Text(
                    'Dont Have Account? Register ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        
        
        ),
      ),
    );
  }
}
