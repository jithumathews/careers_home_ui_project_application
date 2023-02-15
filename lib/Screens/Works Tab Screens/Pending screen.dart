import 'package:careers_home_ui_project_application/Screens/Works%20Tab%20Screens/final%20screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Pending(),
  ));
}

class Pending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Final1()));
          },
          child: Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.white,
              child: Column(children: [
                Container(
                  height: MediaQuery.of(context).size.height * .17,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Row(
                      children: [
                        Text(
                          "<  Works",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30,right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(179, 240, 243, 250),
                            ),
                            constraints: BoxConstraints.expand(height: 50),
                            child: TabBar(
                              indicator: BoxDecoration(
                                color: Colors.yellow[700],
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromARGB(255, 61, 61, 165),
                                    width: 3,
                                  ),
                                ),
                              ),
                              unselectedLabelColor: Colors.black54,
                              labelColor: Color.fromARGB(255, 61, 61, 165),
                              indicatorColor: Colors.yellow,
                              tabs: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Tab(
                                      text: "Pending",
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Tab(
                                      text: "Active",
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Tab(text: "Completed"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        SizedBox(height: 25),
                        Expanded(
                          child: TabBarView(
                            children: [
                              CustomContain(title: "Celing", text1: "Trviandrum", text2: "eldho")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ])),
        ),
      bottomNavigationBar:  BottomNavigationBar(
      selectedItemColor: Colors.yellow,
      currentIndex: 1,
      backgroundColor: Colors.black,
      elevation: 30,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "Home",
            backgroundColor: Colors.yellow),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){

              },
              child: Icon(
                Icons.work,
                color: Colors.white,
              ),
            ),
            label: "Works",
            backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.wallet,
            color: Colors.white,
          ),
          label: "Wallet",

        ),
      ],
    ),);
  }}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContain(
        title: "Ceiling Light Repairing",
        text1: "Trivandrum,Palayam",
        text2: "Sudeep",
      ),
    );
  }
}

class CustomContain extends StatelessWidget {
  String title;
  String text1;
  String text2;
  CustomContain({
    required this.title,
    required this.text1,
    required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 3,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 246, 189, 18)),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 183, 125),
                borderRadius: BorderRadius.circular(5)),
            width: 50,
            height: 20,
            child: Center(child: Text("new")),
          ),
          Positioned(top: 40, left: 7, child: Text(title)),
          Positioned(
            top: 70,
            left: 7,
            child: Row(
              children: [Icon(Icons.navigation), Text(text1)],
            ),
          ),
          Positioned(
            top: 90,
            left: 7,
            child: Row(
              children: [Icon(Icons.person), Text(text1)],
            ),
          ),
          Positioned(
            top: 10,
            right: 30,
            left: 200,
            child: Row(
              children: [
                Text("1d Ago"),
                Icon(Icons.favorite),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 1,
            left: 200,
            child: Column(
              children: [Text("price per day"), Text("800")],
            ),
          ),
          Positioned(
            top: 90,
            right: 1,
            left: 210,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 226, 59),
                      borderRadius: BorderRadius.circular(20)),
                  width: 90,
                  height: 30,
                  child: Center(child: Text("View Details")),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

