class ImageDataModel {
  String txt;
  String color;

  ImageDataModel({
    this.txt,
    this.color,
  });

  factory ImageDataModel.fromJson(Map<String, dynamic> js) => ImageDataModel(
        txt: js["txt"],
        color: js["color"],
      );
}
