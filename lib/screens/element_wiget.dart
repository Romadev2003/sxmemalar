import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sxema/base/models/element_model.dart';

class ElementInfo extends StatelessWidget {
  ElementModel elemen;

  ElementInfo(this.elemen);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          elemen.name
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Lottie.asset(
                'assets/lotties/1.json',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 25),
                  width: 300,
                  height: 300,
                  color: Colors.white,
                  child: Image.network(elemen.urlImage),
                ),
                Text(
                  elemen.name,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold


                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  width: 300,
                  child: Text(elemen.discuription,style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
