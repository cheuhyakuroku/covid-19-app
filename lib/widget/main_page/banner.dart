import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: width * 0.6,
      child: FlareActor(
        "assets/covid_banner.flr",
        alignment: Alignment.center,
        fit: BoxFit.fill,
        animation: "ani",
      ),
    );
  }
}
