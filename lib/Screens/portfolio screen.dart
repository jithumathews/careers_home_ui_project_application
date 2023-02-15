import 'package:careers_home_ui_project_application/Screens/location%20screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Portfolio(),
  ));
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.black87,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Row(
              children: [
                Text(
                  "<  Create Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 30),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(right: 270,top: 20),
           child: Text('Portfolio',style: TextStyle(color: Colors.white,fontSize: 20),),
         ),
          Padding(
            padding: const EdgeInsets.only(right: 125),
            child: Text('Attach images for your completed jobs',style: TextStyle(color: Colors.white,fontSize: 15),),
          ),
          Musics_grid(),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: Text('Hourly Rates',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height * .05,
                  width: MediaQuery.of(context).size.width * .55,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
                ),
              ),
              SizedBox(width: 10,),
              Text('/hr',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280),
            child:  Container(
                height: MediaQuery.of(context).size.height * .06,
                width: MediaQuery.of(context).size.width * .75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Location() ));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.yellow[600])),
                ))
          )
        ]),
      ),
    );
  }
}
class Musics_grid extends StatelessWidget {
  List<String> images = [
    "https://images.unsplash.com/photo-1567684014761-b65e2e59b9eb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YXBhcnRtZW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1605283176476-63150675f4a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGFwYXJ0bWVudHN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1565043589221-1a6fd9ae45c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGFwYXJ0bWVudHN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1553517633-cfb8bdc99409?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGFwYXJ0bWVudHN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1559998852-f8ab898d889e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njh8fGFwYXJ0bWVudHN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://www.macworld.com/wp-content/uploads/2021/03/ios11-camera-icon-100740049-orig-5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(15.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 5,childAspectRatio: 1),
          itemCount: images.length,
          itemBuilder: (BuildContext, int index) {
            return
              // Container(color: Colors.black,
              // child:
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 120, width: 120,
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width *.3,
                        decoration: BoxDecoration(
                          // boxShadow: [BoxShadow(color: Colors.green,blurRadius: 8,),],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(images[index]),),
                        ),
                      ),
                      SizedBox(width: 5,)
                    ],
                  ),
                ],
              );
          }),
    );
  }
}

