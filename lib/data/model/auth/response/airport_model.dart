class AirportModel {
  List<Airports>? airports;

  AirportModel({this.airports});

  AirportModel.fromJson(Map<String, dynamic> json) {
    if (json['airports'] != null) {
      airports = <Airports>[];
      json['airports'].forEach((v) {
        airports!.add(new Airports.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.airports != null) {
      data['airports'] = this.airports!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Airports {
  String? sId;
  String? stateName;
  String? airCode;
  String? cityCode;
  String? airportName;
  String? image;
  String? countryCode;
  int? priority;
  int? iV;
  String? createdAt;
  String? updatedAt;
  String? id;

  Airports(
      {this.sId,
        this.stateName,
        this.airCode,
        this.cityCode,
        this.airportName,
        this.countryCode,
        this.priority,
        this.iV,
        this.createdAt,
        this.updatedAt,
        this.id});

  Airports.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    stateName = json['stateName'];
    airCode = json['airCode'];
    cityCode = json['cityCode'];
    airportName = json['airportName'];
    image = json['image'];
    countryCode = json['countryCode'];
    priority = json['priority'];
    iV = json['__v'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['stateName'] = this.stateName;
    data['airCode'] = this.airCode;
    data['cityCode'] = this.cityCode;
    data['airportName'] = this.airportName;
    data['image'] = this.image;
    data['countryCode'] = this.countryCode;
    data['priority'] = this.priority;
    data['__v'] = this.iV;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['id'] = this.id;
    return data;
  }
}