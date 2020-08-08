import 'package:covidapp/model/tinh.dart';
import 'package:covidapp/utils/colors.dart';
import 'package:covidapp/utils/styles.dart';
import 'package:flutter/material.dart';

class CacTinh extends StatelessWidget {
  final List<TinhModel> data;
  CacTinh({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              title: Text('Chi tiết các tỉnh thành', style: MyStyles.title),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: data.map((e) => buildCard(e)).toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCard(TinhModel tinhModel) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(tinhModel.tinh, style: MyStyles.title),
            SizedBox(width: 8),
            buildDetail(tinhModel.cn, MyStyles.tongCa, MyColors.purpleOpa),
            buildDetail(tinhModel.ddt, MyStyles.dieuTri, MyColors.yellowOpa),
            buildDetail(tinhModel.hp, MyStyles.hoiPhuc, MyColors.greenleOpa),
            buildDetail(tinhModel.tv, MyStyles.tuVong, MyColors.redOpa),
          ],
        ),
      ),
    );
  }

  Widget buildDetail(String sl, TextStyle style, Color opa) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: opa, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Text(sl, style: style),
    );
  }
}
