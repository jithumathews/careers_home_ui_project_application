import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Final1(),
  ));
}

class Final1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.TsstOLQoBTOcQGa4LxSBeAHaEJ?w=265&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7"),fit: BoxFit.cover)),
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * .17,
              width: MediaQuery.of(context).size.width * 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Row(
                  children: [
                    Text(
                      "<  Wallet",
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
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Column(
                children: [
                  Text("Hey!",style: TextStyle(fontSize: 50),),
                  Text("We Are Cooking It Up!",style: TextStyle(fontSize: 50),),
                  Text("Stay Tuned!",style: TextStyle(color: Colors.orangeAccent,fontSize: 50),),
                ],
              ),
            )
          ])),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellow,
        currentIndex: 2,
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
                onTap: () {},
                child: Icon(
                  Icons.work,
                  color: Colors.white,
                ),
              ),
              label: "Works",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: Colors.white,
            ),
            label: "Wallet",
          ),
        ],
      ),
    );
  }
}
