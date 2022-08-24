import 'package:bmi/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
   double height = 150;
   int weight=60 ;
   int age = 20 ;
   bool isMale=true;

   Color sexColor=Color(0xff111328);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0e21),
      appBar: AppBar(
        backgroundColor: Color(0xff0a0e22),
        title:Center(child: Text('BMI CALCULATOR ')),
      ),
     body:  Padding(
       padding: const EdgeInsets.all(20.0),
       child: Column(
         children: [
           Expanded(
             child: Row(
               children: [
                 Expanded(
                   child: InkWell(
                     onTap: (){
                       setState(() {
                         isMale=true;
                       });

                     },
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color:isMale ? Color(0xff111328): Color(0xff1d1e33) ,
                       ),

                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(
                             Icons.pregnant_woman_sharp,
                             size: 40,
                             color: Color(0xffffffff),
                           ),
                           Text(
                             'MALE',
                             style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: 16,
                               color: Color(0xffffffff)
                             ),
                           )
                         ],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: InkWell(
                     onTap: (){
                       setState(() {
                         isMale=false;
                       });

                       },
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                           color:!isMale ? Color(0xff111328): Color(0xff1d1e33)
                       ) ,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(
                             Icons.pregnant_woman_sharp,
                             size: 40,
                             color: Color(0xffffffff),
                           ),
                           Text(
                             'FEMALE',
                             style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: 16,
                                 color: Color(0xffffffff)
                             ),
                           )
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 20,),
           Expanded(
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Color(0xff1d1e33),
               ),
               width: double.infinity,
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     'HEIGHT',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.w300,
                       fontSize: 15
                     ),
                   ),
                   SizedBox(height: 3,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     children: [
                       Text(
                         '${height.round()}',
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w900,
                           fontSize: 25
                         ),
                       ),
                       Text(
                         'cm',
                         style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w500,
                           fontSize: 16
                         ),
                       ),
                     ],
                   ),
                   Slider(
                       value:height ,
                       min: 50,
                       max: 220,
                       onChanged: (value)
                       {
                        setState(() {
                          height= value;
                          print(height);
                        });
                       } ,
                   )
                 ],
               ),
             ),
           ),
           SizedBox(height: 20,),
           Expanded(
             child: Row(
               children: [
                 Expanded(
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Color(0xff1d1e33),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                             'WEIGHT',
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w300,
                               fontSize: 15
                           ),
                         ),
                         SizedBox(
                           height: 10,
                         ),
                         Text(
                           '$weight',
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w900,
                               fontSize: 25
                           ),
                         ),
                         SizedBox(height: 10,),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CircleAvatar(
                               child: IconButton(
                                 icon: Icon(Icons.add),
                                 onPressed: (){
                                   setState(() {
                                     weight++;
                                     print(weight);
                                   });
                                 },

                               ),
                               backgroundColor: Color(0xff3a3e50),
                             ),
                             SizedBox(width: 10,),
                             CircleAvatar(
                               child: IconButton(
                                   icon: Icon(
                                     Icons.minimize,
                                     color: Color(0xffffffff),
                                   ),
                                 onPressed: (){
                                     setState(() {
                                       weight--;
                                     });
                                 },
                               ),
                               backgroundColor: Color(0xff3a3e50),
                             ),
                           ],
                         )

                       ],
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Color(0xff1d1e33),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'AGE',
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w300,
                               fontSize: 15
                           ),
                         ),
                         Text(
                           '$age',
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w900,
                               fontSize: 25
                           ),
                         ),
                         SizedBox(height: 10,),
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CircleAvatar(
                               child:IconButton(
                                 icon:Icon(Icons.add , color: Color(0xffffffff),),
                                 onPressed: (){
                                   setState(() {
                                     age++;
                                   });
                                 },
                               ),
                                 backgroundColor: Color(0xff3a3e50),
                             ),
                             SizedBox(width: 10,),
                             CircleAvatar(
                               child:IconButton(
                                 icon: Icon(Icons.minimize, color: Color(0xffffffff),),
                                 onPressed: (){
                                   setState(() {
                                     age--;
                                   });
                                 },
                               ),
                               backgroundColor: Color(0xff3a3e50),
                             ),
                           ],
                         )

                       ],
                     ),
                   ),
                 ),


               ],
             ),
           ),
           SizedBox(height: 20,),
           MaterialButton(
             minWidth: double.infinity,
             height: 50,
             color: Color(0xff3a3e50),
               onPressed: ()
               {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Result(sex: isMale, age: age, height: height),));
               },
             child: Text(
               'CALCULATE',
               style: TextStyle(
                 fontSize: 20,
                 color: Colors.white
               ),
             ),
               )


         ],
       ),
     ),
    );
  }
}
