import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sxema/base/models/element_model.dart';
import 'package:sxema/screens/element_wiget.dart';

class ElementBuilder extends StatelessWidget {
  String title;
  List<ElementModel> element;


  ElementBuilder(this.title, this.element, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Lottie.asset(
                'assets/lotties/bg.json',
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView.builder(
            itemCount: element.length,
            itemBuilder: (BuildContext cootext, int index) =>
                _setContainer(element[index], context),
          ),
        ],
      ),
    );
  }

  _setContainer(ElementModel el, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ElementInfo(el)));
      },
      child: Container(
        height: 75,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        margin: const EdgeInsets.only(
          top: 50.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent,
              blurRadius: 20.0,
              offset: Offset(10.0, 10.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(el.urlImage),
            Expanded(
              child: Text(
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
                el.name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
