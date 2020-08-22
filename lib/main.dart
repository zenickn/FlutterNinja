import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard()
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text('NinjaIDCard'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,//drop shadow

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel+=1;
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.grey[800],

      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.jpeg'),
                radius: 40.0,
              ),
            ),
           Divider(
             height:90,
             color:Colors.grey[800],
           ),
           Text('Name',
           style: TextStyle(
             color:Colors.grey,
             letterSpacing: 2,
           ),
           ),
            SizedBox(height:10),//add space
            Text('Chun-Li',
              style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height:30),//add space
            Text('Current Ninja Level',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height:10),//add space
            Text('$ninjaLevel',
              style: TextStyle(
                  color:Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height:30),//add space
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],

                ),
                SizedBox(width:10),//add space
                Text(
                  'testing@gmail.com',
                  style:TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing:1

                  )
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}






