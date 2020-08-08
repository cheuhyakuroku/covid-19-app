class TongCaModel {
  String cn;
  String ddt;
  String hp;
  String tv;

  TongCaModel({
    this.cn,
    this.ddt,
    this.hp,
    this.tv,
  });

  factory TongCaModel.fromJson(Map<String, dynamic> js) => TongCaModel(
        cn: js["cn"],
        ddt: js["ddt"],
        hp: js["hp"],
        tv: js["tv"],
      );
}
