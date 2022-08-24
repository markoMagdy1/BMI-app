import 'package:bmi/bmi.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final bool sex;
final int age ;
final double height;
Result({
  required this.sex,
  required this.age,
  required this.height,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sex:${sex ? 'Male' : 'Femal'} ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,

              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Result: ${height.round()}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,

              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Age: $age ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
