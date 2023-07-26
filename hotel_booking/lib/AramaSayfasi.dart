import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AramaSayfa extends StatefulWidget {
  const AramaSayfa({super.key});

  @override
  State<AramaSayfa> createState() => _AramaSayfaState();
}

class _AramaSayfaState extends State<AramaSayfa> {
  var resimler=<String>[];

  var guestsListe= <String>[];
  String selectedGuests= "Guests";
  var nightListe= <String>[];
  String selectedNight= "Night";
  @override
  void initState() {
    super.initState();
    guestsListe.add("Guests");
    guestsListe.add("1");
    guestsListe.add("2");
    guestsListe.add("3");
    guestsListe.add("4");
    guestsListe.add("5");
    guestsListe.add("6");
    nightListe.add("Night");
    nightListe.add("1");
    nightListe.add("2");
    nightListe.add("3");
    nightListe.add("4");
    resimler.add("alt1.png");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("resimler/img.png"), fit:BoxFit.cover,
              )
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  height: 300,
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.brown,

                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(25.0),
                      topRight: const Radius.circular(25.0),
                  ),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Place",
                                hintStyle: TextStyle(color: Colors.white38),
                                filled: true,//arka plana renk verebilmek için
                                fillColor: Colors.white38,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.brown,width: 0.1),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))//textfield kenar ovalliği
                          ),
                              ),  ),
                          ),
                         Spacer(),
                          DropdownButton<String>(
                            value: selectedGuests,
                            items: guestsListe.map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text("$value",style: TextStyle(color: Colors.white38,fontSize: 20),),
                              );


                            }).toList(),
                            icon: Icon(Icons.arrow_drop_down),
                            onChanged: (secilenveri){
                              setState(() {
                                selectedGuests = secilenveri!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Date",
                                hintStyle: TextStyle(color: Colors.white38),
                                filled: true,//arka plana renk verebilmek için
                                fillColor: Colors.white38,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0))//textfield kenar ovalliği
                                ),
                              ),

                            ),
                          ),
                          Spacer(),
                          DropdownButton<String>(
                            value: selectedNight,
                            items: nightListe.map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text("$value",style: TextStyle(color: Colors.white38,fontSize: 20),),
                              );


                            }).toList(),
                            icon: Icon(Icons.arrow_drop_down),
                            onChanged: (secilenveri){
                              setState(() {
                                selectedNight = secilenveri!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(onPressed: (){
                              print("Oda Aranıyor");
                            }, child: Text("Search a romm" , style: TextStyle(fontSize: 20,color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shadowColor: Colors.black,//gölge rengi
                                elevation: 10,//gölge derinliği
                                shape: RoundedRectangleBorder(//köşe şekli
                                  side: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],

                  ),
                  ),
                ),


              ],
            ),
          ),

          Text("Recommended" , style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

          /*ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: resimler.length,
            itemBuilder: (context,indeks){
              return Card(
                child: Column(
                  children: [
                    Image.asset("resimler/${resimler[indeks]}"),
                  ],

                ),
              );
            },
          ),*/



        ],
      )

    );
  }
}
