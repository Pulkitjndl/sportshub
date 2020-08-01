import 'package:flutter/material.dart';
import 'package:sportshub/models/api_models.dart';

class PlayerProfile extends StatefulWidget {
  final Players players;
  PlayerProfile(this.players);
  @override
  _PlayerProfileState createState() => _PlayerProfileState();
}

class _PlayerProfileState extends State<PlayerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Image.network(widget.players.nation.imageUrls.small),
        centerTitle: true,
      ),

      body: Center(
      child:Column(
       children:<Widget>[
       Padding(
       padding: const EdgeInsets.all(8.0),
        child : Text(widget.players.name.toUpperCase(),
        style: TextStyle(fontSize:45,
        color: Colors.white10,
        letterSpacing: 12.0),
        )
        ),
        CircleAvatar(
          child: Image.network(widget.players.headshot.imgUrl),
          backgroundColor: Colors.transparent,
          radius: 75),

          Padding(padding: EdgeInsets.only(top: 18.0),
          child: Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ClipRRect(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(widget.players.firstName+" "+widget.players.lastName,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900]
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:8.0,right:8.0),
                          child: Text("Age"+widget.players.age.toString()+"|"+widget.players.birthdate,
                          style: TextStyle(
                            color: Colors.blue[900],fontSize: 18.0)
                          ),
                        ),
                          Padding(
                          padding: EdgeInsets.only(left:8.0,right:8.0),
                          child: Text("Height"+widget.players.height.toString(),
                          style: TextStyle(
                            color: Colors.blue[900],fontSize: 18.0))),


                            Padding(
                          padding: EdgeInsets.only(left:8.0,right:8.0),
                          child: Text("Position"+widget.players.position.toString(),
                          style: TextStyle(
                            color: Colors.blue[900],fontSize: 18.0))),

                            Padding(
                          padding: EdgeInsets.only(left:8.0,right:8.0),
                          child: Text("Club"+widget.players.club.toString()+"|"+widget.players.birthdate,
                          style: TextStyle(
                            color: Colors.blue[900],fontSize: 18.0))),

                            Padding(
                          padding: EdgeInsets.only(left:8.0,right:8.0),
                          child: Text("League"+widget.players.league.toString()+"|"+widget.players.birthdate,
                          style: TextStyle(
                            color: Colors.blue[900],fontSize: 18.0)
                            )
                            ),
                      ],
                    ),
                  ),
                ),
              Container(
                width: MediaQuery.of(context).size.width-40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                          child:Text(
                            widget.players.balance.toString(),
                            style: TextStyle(fontSize: 18.0,
                            color: Colors.blue[900]
                            )
                             ),
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                            "curve",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 18.0
                            ),
                            ),
                          )
                          ]
                          ),

                          Column(
                        children: <Widget>[
                          CircleAvatar(
                          child:Text(
                            widget.players.strength.toString(),
                            style: TextStyle(fontSize: 18.0,
                            color: Colors.blue[900]
                            )
                             ),
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                            "Strength",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 18.0
                            ),
                            ),
                          )
                          ]
                          ),

                          Column(
                        children: <Widget>[
                          CircleAvatar(
                          child:Text(
                            widget.players.agility.toString(),
                            style: TextStyle(fontSize: 18.0,
                            color: Colors.blue[900]
                            )
                             ),
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                            "Agility",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 18.0
                            ),
                            ),
                          )
                          ]
                          )
                    ]),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: <Widget>[
                        Column(children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(widget.players.dribbling.toString(),style: TextStyle(fontSize: 18.0,color: Colors.blue),)
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          Text("Dribbling",style: TextStyle(fontSize:18.0,color: Colors.white)),]),

                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                child :Text(widget.players.finishing.toString(),style:TextStyle(fontSize: 18.0,color: Colors.blue[900])
                                ),
                                backgroundColor: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Finishing",style: TextStyle(fontSize: 18.0,color: Colors.white60),
                                  ),
                                )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                child :Text(widget.players.balance.toString(),style:TextStyle(fontSize: 18.0,color: Colors.blue)
                                ),
                                backgroundColor: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "balance",style: TextStyle(fontSize: 18.0,color: Colors.white60),
                                  ),
                                )
                            ],
                          )
                     ],
                   ),    
                  ],
                ),
              )
              ],
            ),
          ),)
        ]
        )
        ),
    );
  }
}