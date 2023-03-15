class Model {
  bool? status;
  String? message;

  Data? data;
  Model({this.status, this.message, this.data});
  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]));
  }
  Map<String, dynamic> tojson() {
    return {"status": status, "message": message, "data": data?.tojson()};
  }
}

class Data {
  int? customer_id;
  int? customer_name;
  int? customer_mobile;
  int? customer_email;
  int? customer_location;
  Data(
      {this.customer_id,
      this.customer_name,
      this.customer_mobile,
      this.customer_location});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        customer_id: json["customer_id"],
        customer_name: json["customer_name"],
        customer_location: json["customer_location"],
        customer_mobile: json["customer_mobile"]);
  }
  Map<String, dynamic> tojson() {
    return {
      "customer_id": customer_id,
      "customer_name": customer_name,
      "customer_location": customer_location,
      "customer_mobile": customer_mobile
    };
  }
}
