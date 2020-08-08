import 'package:covidapp/model/tongca.dart';
import 'package:covidapp/utils/colors.dart';
import 'package:covidapp/utils/icons.dart';
import 'package:covidapp/utils/styles.dart';
import 'package:covidapp/widget/main_page/header_panter.dart';
import 'package:flutter/material.dart';

class ThongKe extends StatelessWidget {
  final TongCaModel tongCa;
  ThongKe({this.tongCa});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomPaint(
      painter: HeaderPanter(),
      child: Container(
        width: width,
        height: width * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ListTile(
                title:
                    Text('Cập nhật tình hình COVID-19', style: MyStyles.title),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildDetail(MyIcons.tongCa, tongCa.cn, "Tổng ca",
                        MyStyles.tongCa, MyColors.purpleOpa),
                    buildDetail(MyIcons.dieuTri, tongCa.ddt, "Điều trị",
                        MyStyles.dieuTri, MyColors.yellowOpa),
                    buildDetail(MyIcons.hoiPhuc, tongCa.hp, "Hồi phục",
                        MyStyles.hoiPhuc, MyColors.greenleOpa),
                    buildDetail(MyIcons.tuVong, tongCa.tv, "Tử vong",
                        MyStyles.tuVong, MyColors.redOpa),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDetail(
      Icon icon, String sl, String txt, TextStyle style, Color opaColor) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(backgroundColor: opaColor, maxRadius: 20, child: icon),
        SizedBox(
          height: 8,
        ),
        Text(
          sl,
          style: style,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          txt,
          textAlign: TextAlign.center,
          style: style,
        )
      ],
    );
  }
}
