import 'package:covidapp/utils/styles.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final bool isLoad;
  Loading({this.isLoad});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return isLoad
        ? Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: width * 0.75,
                  height: width * 0.75,
                  child: FlareActor(
                    "assets/virus.flr",
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                    animation: "roaming",
                  ),
                ),
                Text("Đang tải dữ liệu", style: MyStyles.loading),
              ],
            ),
          )
        : Center(
            child: Container(
              width: width * 0.5,
              height: width * 0.5,
              child: FlareActor(
                "assets/virus.flr",
                alignment: Alignment.center,
                fit: BoxFit.fill,
                animation: "roaming",
              ),
            ),
          );
  }
}
