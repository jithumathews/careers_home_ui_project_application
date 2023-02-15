import 'package:careers_home_ui_project_application/Screens/Navigationbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .35,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://one37pm.imgix.net/one37pm-editor-dev-images/s3fs-public/user-images/2020-09/elon-musk-mobile.jpg?ch=Width,DPR&auto=compress&q=60&w=1&fit=clip&dpr=2"),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Samuel John",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "Trivandrum, Palayam",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    trailing: const Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .12,
                          width: MediaQuery.of(context).size.width * .25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.iu_IXGl0Zrpr_QcNf_15qgAAAA?pid=ImgDet&w=150&h=150&c=7&dpr=1.5"),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Active",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .12,
                          width: MediaQuery.of(context).size.width * .25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.iu_IXGl0Zrpr_QcNf_15qgAAAA?pid=ImgDet&w=150&h=150&c=7&dpr=1.5"),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                Text(
                                  "02",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Pending",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .12,
                          width: MediaQuery.of(context).size.width * .25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.iu_IXGl0Zrpr_QcNf_15qgAAAA?pid=ImgDet&w=150&h=150&c=7&dpr=1.5"),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                Text(
                                  "10",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Completed",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .43,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: ListTile(
                      leading: Icon(
                        Icons.wallet_rounded,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Earned",
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: Text(
                        "6000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 200),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .07,
                    width: MediaQuery.of(context).size.width * .43,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: ListTile(
                      title: Text(
                        "Feedbacks",
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: Text(
                        "12",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .07,
              width: MediaQuery.of(context).size.width * .73,
              color: Colors.grey[200],
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                title: Text("Search"),
                trailing: Wrap(
                  children: [
                    Text(
                      "|",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.filter_alt_rounded)
                  ],
                ),
              ),
            )
            //
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        selectedItemColor: Colors.yellow,
        currentIndex: 0,
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
      ),
    );
  }
}
