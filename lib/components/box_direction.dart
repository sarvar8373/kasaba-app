import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/pages/group_trade.dart';
import 'package:new_mobilek/pages/helmet_safety.dart';
import 'package:new_mobilek/pages/labor_code.dart';
import 'package:new_mobilek/pages/sanatorium_page.dart';
import 'package:new_mobilek/pages/scale_balanced.dart';
import 'package:new_mobilek/pages/trade_page.dart';

class BoxDeroction extends StatelessWidget {
  const BoxDeroction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: GestureDetector(
                  onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const NewScreens() ));
                },
                  child:  Container(
                    height: 160.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(4, 8), // Shadow position
                          ),],
                        color: Color.fromARGB(255,255,255,255)
                    ),
                    child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.check, size: 50, color:Color.fromARGB(255, 30, 72, 156),),
                            Padding(padding: EdgeInsets.all(15),
                            child:Text("trade_info".tr,textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:15,
                              fontWeight: FontWeight.w900,
                            ),
                            ),
                            ),
                            
                          ],
                    ),
                ),
                )

          ),
          ),
      Expanded(
        child:Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child:  GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> GroupTrade() ));
              },
              child: Container(
            height: 160.0,
            width: 160.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(4, 8), // Shadow position
                  ),],
                color: Color.fromARGB(255,255,255,255)
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.peopleGroup, size: 50, color:Color.fromARGB(255, 30, 72, 156),),
                  Padding(padding: EdgeInsets.all(10),
                  child:Text("group_trade".tr,textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize:15,
                    fontWeight: FontWeight.w900,
                  ),) ,)
                  
                ],
            ),
          ),
            )

    ) 
    ),        
    
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child:  GestureDetector(
                    onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HelmetSafety() ));
              },
                    child: Container(
                  height: 160.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),],
                      color: Color.fromARGB(255,255,255,255)
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.helmetSafety, size: 50, color:Color.fromARGB(255, 30, 72, 156),),
                        Padding(padding: EdgeInsets.all(10),
                        child:  Text("safety_trade".tr,textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:15,
                          fontWeight: FontWeight.w900,
                        ),),
                        )
                      
                      ],
                  ),
                ),
                  )

       ),
    ),
    Expanded(
      child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child:  GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScaleSafety() ));
              },
              child: Container(
            height: 160.0,
            width: 160.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),],
                color: Color.fromARGB(255,255,255,255)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.handHoldingMedical, size: 50, color:Color.fromARGB(255, 30, 72, 156),),
                Padding(padding: EdgeInsets.all(10),
                child:Text("legal_clinic".tr, textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize:15,
                  fontWeight: FontWeight.w900,
                ),
                ) ,)
                
            ],
            ),
          ),
            )
    ),
    )        
    
          ],
        ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child:  GestureDetector(
                    onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LaborCode() ));
              },
                    child: Container(
                  height: 160.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),],
                      color: Color.fromARGB(255,255,255,255)
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.tasks, size: 50, color:Color.fromARGB(255, 30, 72, 156),),
                        Padding(padding: EdgeInsets.all(10),
                        child:  Text("labor_code".tr,textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:15,
                          fontWeight: FontWeight.w900,
                        ),),
                        )
                      
                      ],
                  ),
                ),
                  )

       ),
    ),
    Expanded(
      child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child:  GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SanatoriumPage() ));
              },
              child: Container(
            height: 160.0,
            width: 160.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),],
                color: Color.fromARGB(255,255,255,255)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.building, size: 50, color:Color.fromARGB(255, 30, 72, 156),),
                Padding(padding: EdgeInsets.all(10),
                child:Text("sanatorium".tr, textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize:15,
                  fontWeight: FontWeight.w900,
                ),
                ) ,)
                
            ],
            ),
          ),
            )
    ),
    )        
    
          ],
        )
        
      ],
    );
  }
}