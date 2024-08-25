
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:swiftstay/Service_Provider/servicerlogin.dart';
import 'package:swiftstay/User/userlogin.dart';



class Selectin extends StatefulWidget {
  const Selectin({Key? key}) : super(key: key);

  @override
  State<Selectin> createState() => _SelectinState();
}

class _SelectinState extends State<Selectin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("Continue as", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>   Servicerlogin()),
                  );
                },
                child: Container(
                  height: 150,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Center(
                            child: Text(
                              "Services",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                            child: Lottie.asset("assets/serviceprovider.json")
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Userlogin()));

                },
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Center(
                            child: Text(
                              "User",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                            child: Lottie.asset("assets/userlogo.json")
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),

            ],
          ),
        ),
      ),
    );
  }
}
