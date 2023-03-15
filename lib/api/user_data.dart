

class Data {
  String? uname;
  String? name;
  String? standard;
  String? section;
  String? fatName;
  String? motName;
  String? fatMob;

  Data(
      {this.uname,
      this.name,
      this.standard,
      this.section,
      this.fatName,
      this.motName,
      this.fatMob});

  Data.fromJson(Map<String, dynamic> json) {
    uname = json['data'][0]['uname'];
    name = json['data'][0]['name'];
    standard = json['data'][0]['standard'];
    section = json['data'][0]['section'];
    fatName = json['data'][0]['fat_name'];
    motName = json['data'][0]['mot_name'];
    fatMob = json['data'][0]['fat_mob'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uname'] = this.uname;
    data['name'] = this.name;
    data['standard'] = this.standard;
    data['section'] = this.section;
    data['fat_name'] = this.fatName;
    data['mot_name'] = this.motName;
    data['fat_mob'] = this.fatMob;
    return data;
  }
}