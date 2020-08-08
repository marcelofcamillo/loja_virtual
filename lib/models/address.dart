class Address {

  Address({this.street, this.number, this.complement, this.district,
    this.zipcode, this.city, this.state, this.latitude, this.longitude});

  String street;
  String number;
  String complement;
  String district;
  String zipcode;
  String city;
  String state;

  double latitude;
  double longitude;

  Address.fromMap(Map<String, dynamic> map) {
    street = map['street'] as String;
    number = map['number'] as String;
    complement = map['complement'] as String;
    district = map['district'] as String;
    zipcode = map['zipcode'] as String;
    city = map['city'] as String;
    state = map['state'] as String;
    latitude = map['latitude'] as double;
    longitude = map['long'] as double;
  }

  Map<String, dynamic> toMap() {
    return {
      'street': street,
      'number': number,
      'complement': complement,
      'district': district,
      'zipcode': zipcode,
      'city': city,
      'state': state,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}