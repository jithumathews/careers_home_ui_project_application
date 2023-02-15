import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Pending(),
  ));
}

var images = [
  "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://media.istockphoto.com/id/1370825295/photo/modern-hotel-room-with-double-bed-night-tables-tv-set-and-cityscape-from-the-window.jpg?b=1&s=170667a&w=0&k=20&c=ltmI5thpj-pfho5VsW23pd0wYYZxtQq6RTejWXXvRwI=",
  "https://media.istockphoto.com/id/1210328194/photo/ocean-sunset-view-from-bedroom-balcony-for-travel-concept.jpg?b=1&s=170667a&w=0&k=20&c=VvPLHfCIazQ0Yq8UewN1fOohBembuH_LbNwZmmQpRLE=",
  "https://media.istockphoto.com/id/903417402/photo/luxury-construction-hotel-with-swimming-pool-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=hi6Ig3G2CfPBMnlN3O7Nxbvr0670YfmdPGFL8ZRgG0o=",
  "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&w=1000&q=80"
];
var picture = [
  "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
  "https://media.istockphoto.com/id/1370825295/photo/modern-hotel-room-with-double-bed-night-tables-tv-set-and-cityscape-from-the-window.jpg?b=1&s=170667a&w=0&k=20&c=ltmI5thpj-pfho5VsW23pd0wYYZxtQq6RTejWXXvRwI=",
  "https://media.istockphoto.com/id/1210328194/photo/ocean-sunset-view-from-bedroom-balcony-for-travel-concept.jpg?b=1&s=170667a&w=0&k=20&c=VvPLHfCIazQ0Yq8UewN1fOohBembuH_LbNwZmmQpRLE=",
  "https://media.istockphoto.com/id/903417402/photo/luxury-construction-hotel-with-swimming-pool-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=hi6Ig3G2CfPBMnlN3O7Nxbvr0670YfmdPGFL8ZRgG0o=",
  "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tc3xlbnwwfHwwfHw%3D&w=1000&q=80"
];

var title = [
  "Marriott",
  "Grand Hyatt",
  "Taj Malabar",
  "Crowne Plaza",
  "Presidency"
];
var subtitle = [
  "A five star hotel in ",
  "A four star hotel in",
  "A five star hotel in",
  "A four star hotel in",
  "A five star hotel in",
];

var place = [
  "Kochi",
  "Cochin",
  "Bolgatty",
  "Kochi",
  "Cochin",
];

var rate = [
  "\$149 / night",
  "\$109 / night",
  "\$79 / night",
  "\$119 / night",
  "\$89 / night"
];

var rating = [
  "4.8⭐",
  "4.6⭐",
  "4.1⭐",
  "4.2⭐",
  "3.9⭐",
];

class Pending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                          children: [],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ])),
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
  }
}

class _pending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      child: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                        image: DecorationImage(
                            image: NetworkImage(
                              picture[index],
                            ),
                            fit: BoxFit.fill)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          title[index],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          subtitle[index],
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          place[index],
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Text(
                          rate[index],
                          style: TextStyle(color: Colors.blue),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.car_crash,
                                  color: Colors.blue,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.emoji_food_beverage_rounded,
                                  color: Colors.blue,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.wifi,
                                  color: Colors.blue,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 40,
                    width: 80,
                    color: Colors.blue,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Back",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
