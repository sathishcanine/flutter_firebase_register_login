import 'dart:convert';

List<CollegeModel> userModelFromJson(String str) =>
    List<CollegeModel>.from(json.decode(str).map((x) => CollegeModel.fromJson(x)));

String userModelToJson(List<CollegeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CollegeModel {
  CollegeModel({
    required this.alphaTwoCode,
    required this.country,
    required this.name,
    required this.webPages
  });

  String alphaTwoCode;
  String country;
  String name;
  String webPages;

  factory CollegeModel.fromJson(Map<String, dynamic> json) => CollegeModel(
    alphaTwoCode: json["alpha_two_code"],
    country: json["country"],
    name: json["name"],
    webPages: json["web_pages"][0],
      );

  Map<String, dynamic> toJson() => {
        "alpha_two_code": alphaTwoCode,
        "country": country,
        "name": name,
        "webPages": webPages,
      };
}

class Address {
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: Geo.fromJson(json["geo"]),
      );

  Map<String, dynamic> toJson() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo.toJson(),
      };
}

class Geo {
  Geo({
    required this.lat,
    required this.lng,
  });

  String lat;
  String lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
      };
}

class Company {
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  String name;
  String catchPhrase;
  String bs;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
      };
}
