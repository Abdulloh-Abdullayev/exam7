class LIstM {
  String? name;
  String? number;
  String? id;

  LIstM({this.name, this.number, this.id});

  LIstM.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    number = json['number'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['number'] = this.number;
    data['id'] = this.id;
    return data;
  }
}