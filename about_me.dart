import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyProfil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Profil"),
          centerTitle: true,
        ),
        body:
        MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[50],
        padding: EdgeInsets.only(top:40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              children:[ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: NetworkImage("https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/79510637_2917205658323440_6727901114806566912_n.jpg?_nc_cat=105&_nc_sid=85a577&_nc_oc=AQnrfELuN_Fs_fn9ZNSt2T4EvTfdIN_X85JuEQqMtIU9hcaben0vIaCH1TsRR2bdWSA&_nc_ht=scontent-sin6-2.xx&oh=929080fc2e56bf1578f2076b3ecd6086&oe=5E955990"),
                  width: 150, height: 150,
                ), ),
                Text("Anak Agung Ngurah Krisna Surya Saputra", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  height: 2.0,
                ), ),


                Container(
                  margin: EdgeInsets.only(top:20),
                  width: 320,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"SINGARAJA",Icons.location_city, Colors.red),
                          ContainIcon(12,"AYODANCE",Icons.keyboard, Colors.blue),
                        ],),
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"DENPASAR",Icons.home, Colors.green),
                          ContainIcon(12,"UNDIKSHA",Icons.school, Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}

//container  kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  final Color warna;
  const ContainIcon(this.atas,this.isi,this.icon,this.warna);
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.only(left: 20,top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
          border: Border.all(width:3,color:Colors.brown,),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: warna,
              size: 40,
            ),

            Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top:24),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )
    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
        height: 1.3,
        fontSize: 18,
        color: Colors.white,
      ),
      ),
    );
  }
}