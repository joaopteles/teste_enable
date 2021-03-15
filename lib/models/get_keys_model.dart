class GetKeysModel {
  String auth;
  String tips;
  String suggestion;
  String survey;

  GetKeysModel({this.auth, this.tips, this.suggestion, this.survey});

  GetKeysModel.fromJson(Map<String, dynamic> json) {
    auth = json['auth'];
    tips = json['tips'];
    suggestion = json['suggestion'];
    survey = json['survey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auth'] = this.auth;
    data['tips'] = this.tips;
    data['suggestion'] = this.suggestion;
    data['survey'] = this.survey;
    return data;
  }
}
