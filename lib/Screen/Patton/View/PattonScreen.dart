import 'package:adavance_hafe_exam/Screen/Patton/Contorllor/PattenControllor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PattonScreen extends StatefulWidget {
  const PattonScreen({Key? key}) : super(key: key);

  @override
  State<PattonScreen> createState() => _PattonScreenState();
}

class _PattonScreenState extends State<PattonScreen> {
  PattenControllor? pattenControllorT;
  PattenControllor? pattenControllorF;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Slider(
              value: pattenControllorT!.i,
              min: 1,
              max: 5,
              divisions: 5,
              onChanged: (value) {
                pattenControllorT!.i = value;
              },
              onChangeEnd: (value) {
                pattenControllorF!.Pattorn(value);
              },
            ),
            SizedBox(height: 20),
            Text(
              "${pattenControllorF!.Data}",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
