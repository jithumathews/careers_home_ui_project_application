import 'package:careers_home_ui_project_application/negotiate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Jobdetails(),));
}

// class Jobdetails extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
class Jobdetails extends StatelessWidget {


  Jobdetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262e39),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color(0xFF262e39),leading: Icon(Icons.arrow_back),title: Text("Job Details"),actions: [Icon(Icons.more_vert)],),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    ListTile(leading: Text("Ceiling Light Reparing",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),trailing: Icon(Icons.favorite,color: Colors.deepOrangeAccent,),),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: SizedBox(height: 110,child:  Text("Before you begin, turn off power switch \ncontrolling the light fixture to OFF position. Turn of the main power if there is any chance another person/childern turning on the wall power switch while you are working",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),),
                    ),
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Amount"),
                      ),
                      subtitle: Text("800 Per Day"),
                    ) ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/09/29/22/06/light-bulb-4514505_960_720.jpg"))),
                height: 130,
                width: 150,),
              Container(
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/09/29/22/06/light-bulb-4514505_960_720.jpg"))),
                height: 130,
                width: 150,
              ),
              Container(
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2019/09/29/22/06/light-bulb-4514505_960_720.jpg"))),
                height: 130,
                width: 150,)
            ],
          ),
          ListTile(leading: Text("About Customer",style: TextStyle(color: Colors.white),),trailing: Container(height:30,width:100,color: Colors.white,child: Center(child: Text("Get Direction",style: TextStyle(fontWeight: FontWeight.w500),)),),),
          Padding(
            padding: const EdgeInsets.only(top:10),
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
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text('Reject')),
                ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text('Negotiate')),
              ],
            ),
          ),


          SliderButton(
            action: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Negotiate()));
              ///Do something here OnSlide
              print("working");
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
            width: 250,
            height: 60,
            buttonColor: Colors.black,
            backgroundColor: Colors.amber,
            highlightedColor: Colors.white,
            baseColor: Colors.black,
          )
        ],
      ),
    );
  }
}