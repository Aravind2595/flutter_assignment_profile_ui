import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUi(),
  ));
}

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(FontAwesomeIcons.bars),
            Text("Profile"),
            FaIcon(FontAwesomeIcons.ellipsisVertical),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
          const SizedBox(
            height: 200,
            width: double.infinity,
            child: Image(
              image: AssetImage("assets/images/mountain.jpg"),
              fit: BoxFit.fitWidth,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top:125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  child:Icon(Icons.message,color: Colors.white,),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 74,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images/david-beckham.jpg"),
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue,
                  child:Icon(Icons.add,color: Colors.white,),
                ),
              ],
            ),
          ),
         const Padding(
           padding: EdgeInsets.only(top:300),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Column(
                    children: [
                      Text("David Beckham",style: TextStyle(fontSize: 23),),
                      Padding(
                        padding: EdgeInsets.only(top:8),
                        child: Text("model / super star",style: TextStyle(color: Colors.cyan),),
                      )
                    ],
                  ),
             ],
           ),
         ),

          
        ],
      ),
    );
  }
}
