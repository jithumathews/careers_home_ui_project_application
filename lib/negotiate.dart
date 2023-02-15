import 'package:careers_home_ui_project_application/Screens/Works%20Tab%20Screens/Pending%20screen.dart';
import 'package:careers_home_ui_project_application/Screens/Works%20Tab%20Screens/final%20screen.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(MaterialApp(
    home: Negotiate(),
    debugShowCheckedModeBanner: false,
  ));
}

class Negotiate extends StatelessWidget {
  const Negotiate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262e39),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF262e39),
        title: Text("Negotiate"),
        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.more_vert_rounded)],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // ListTile(
                //   leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
                //   title: Text("Negotiator",style: TextStyle(color: Colors.white),),
                //   trailing: Icon(Icons.more_vert,color: Colors.white,),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Container(
                //   height: MediaQuery.of(context).size.height / 3,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10)),
                //   child: Column(
                //     children: [
                //
                //     ],
                //   ),
                // ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Text(
                            "Ceiling Light Reparing",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          trailing: Icon(
                            Icons.favorite,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: SizedBox(
                            height: 130,
                            child: Text(
                              "Before you begin, turn off power switch \ncontrolling the light fixture to OFF position. Turn of the main power if there is any chance another person/childern turning on the wall power switch while you are working",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Amount"),
                          ),
                          subtitle: Text("800 Per Day"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Text("Type description")),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Type your Amount",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 750",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SliderButton(
                  action: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Pending()));
                  },

                  ///Put label over here
                  label: Text(
                    "Swipe to confirm",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 30.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      )),

                  //Put BoxShadow here
                  boxShadow: BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                  ),

                  //Adjust effects such as shimmer and flag vibration here
                  shimmer: true,
                  vibrationFlag: true,

                  ///Change All the color and size from here.
                  width: 230,
                  radius: 100,
                  buttonColor: Colors.black,
                  backgroundColor: Colors.amber,
                  highlightedColor: Colors.white,
                  baseColor: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}