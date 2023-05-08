import 'package:flutter/material.dart';
import 'package:sxema/base/lists.dart';
import 'package:sxema/screens/elements.dart';

import '../base/models/type_model.dart';

class TypeWiget extends StatelessWidget {
  TypeWiget({Key? key}) : super(key: key);
  Lists lists = Lists();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xff455eff),
                  Color(0xff4066ff),
                  Color(0xff347eff),
                  Color(0xff24a4ff),
                  Color(0xff14d0ff),
                  Color(0xff08f6ff),
                  Color(0xff03fff7),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: ListView.builder(
              itemCount: lists.type.length,
              itemBuilder: (BuildContext cootext, int index) => setType(
                  lists.type[index],
              context),
            ),
          ),
        ),
      ),
    );
  }

  setType(TypeElement list,BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ElementBuilder(list.name,list.elements)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff455eff),
              Color(0xff4066ff),
              Color(0xff347eff),
              Color(0xff24a4ff),
              Color(0xff14d0ff),
              Color(0xff08f6ff),
              Color(0xff03fff7),
/*background: linear-gradient(90deg, #455eff, #4066ff, #347eff, #24a4ff, #14d0ff, #08f6ff, #03fff7);*/
            ],
            tileMode: TileMode.mirror,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 20.0,
              offset: Offset(10.0, 10.0),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              list.name,
              style: const TextStyle(fontSize: 25, color: Colors.yellow),
            )
          ],
        ),
      ),
    );
  }
}
