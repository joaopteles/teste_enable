class SurveyModel {
  String id;
  String createdAt;
  String tipId;
  String action;
  String message;

  SurveyModel({this.id, this.createdAt, this.tipId, this.action, this.message});

  SurveyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created-at'];
    tipId = json['tipId'];
    action = json['action'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created-at'] = this.createdAt;
    data['tipId'] = this.tipId;
    data['action'] = this.action;
    data['message'] = this.message;
    return data;
  }
}
