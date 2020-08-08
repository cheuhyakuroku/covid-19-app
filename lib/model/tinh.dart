class TinhModel {
  String tinh;
  String cn;
  String ddt;
  String hp;
  String tv;

  TinhModel({
    this.tinh,
    this.cn,
    this.ddt,
    this.hp,
    this.tv,
  });

  factory TinhModel.fromJson(Map<String, dynamic> js) => TinhModel(
        tinh: js["tinh"],
        cn: js["cn"],
        ddt: js["ddt"],
        hp: js["hp"],
        tv: js["tv"],
      );
}
