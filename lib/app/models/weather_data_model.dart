import 'dart:convert';

/// cod : "200"
/// message : 0
/// cnt : 40
/// list : [{"dt":1735538400,"main":{"temp":296.13,"feels_like":295.87,"temp_min":296.13,"temp_max":300.11,"pressure":1018,"sea_level":1018,"grnd_level":1015,"humidity":53,"temp_kf":-3.98},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":3.19,"deg":359,"gust":3.88},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2024-12-30 06:00:00"},{"dt":1735549200,"main":{"temp":298.91,"feels_like":298.56,"temp_min":298.91,"temp_max":301.3,"pressure":1015,"sea_level":1015,"grnd_level":1012,"humidity":39,"temp_kf":-2.39},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":3.74,"deg":334,"gust":5.15},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2024-12-30 09:00:00"},{"dt":1735560000,"main":{"temp":296.67,"feels_like":296.1,"temp_min":296.67,"temp_max":296.67,"pressure":1014,"sea_level":1014,"grnd_level":1013,"humidity":39,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":3.44,"deg":316,"gust":4.94},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-30 12:00:00"},{"dt":1735570800,"main":{"temp":294.99,"feels_like":294.35,"temp_min":294.99,"temp_max":294.99,"pressure":1016,"sea_level":1016,"grnd_level":1015,"humidity":43,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.5,"deg":330,"gust":3.05},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-30 15:00:00"},{"dt":1735581600,"main":{"temp":293.55,"feels_like":292.82,"temp_min":293.55,"temp_max":293.55,"pressure":1016,"sea_level":1016,"grnd_level":1014,"humidity":45,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.2,"deg":340,"gust":2.59},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-30 18:00:00"},{"dt":1735592400,"main":{"temp":291.76,"feels_like":290.98,"temp_min":291.76,"temp_max":291.76,"pressure":1015,"sea_level":1015,"grnd_level":1014,"humidity":50,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.82,"deg":359,"gust":3.78},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-30 21:00:00"},{"dt":1735603200,"main":{"temp":290.5,"feels_like":289.73,"temp_min":290.5,"temp_max":290.5,"pressure":1016,"sea_level":1016,"grnd_level":1014,"humidity":55,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":1.98,"deg":346,"gust":2.41},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-31 00:00:00"},{"dt":1735614000,"main":{"temp":294.74,"feels_like":294.1,"temp_min":294.74,"temp_max":294.74,"pressure":1018,"sea_level":1018,"grnd_level":1016,"humidity":44,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":2.28,"deg":348,"gust":2.53},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2024-12-31 03:00:00"},{"dt":1735624800,"main":{"temp":299.25,"feels_like":299.25,"temp_min":299.25,"temp_max":299.25,"pressure":1016,"sea_level":1016,"grnd_level":1014,"humidity":33,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":2.56,"deg":314,"gust":3.55},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2024-12-31 06:00:00"},{"dt":1735635600,"main":{"temp":300.36,"feels_like":299.55,"temp_min":300.36,"temp_max":300.36,"pressure":1012,"sea_level":1012,"grnd_level":1011,"humidity":26,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":3.62,"deg":307,"gust":4.21},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2024-12-31 09:00:00"},{"dt":1735646400,"main":{"temp":295.7,"feels_like":294.9,"temp_min":295.7,"temp_max":295.7,"pressure":1014,"sea_level":1014,"grnd_level":1012,"humidity":34,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":3.82,"deg":299,"gust":5.25},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-31 12:00:00"},{"dt":1735657200,"main":{"temp":293.88,"feels_like":292.97,"temp_min":293.88,"temp_max":293.88,"pressure":1014,"sea_level":1014,"grnd_level":1013,"humidity":37,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.7,"deg":305,"gust":3.81},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-31 15:00:00"},{"dt":1735668000,"main":{"temp":292.04,"feels_like":291.08,"temp_min":292.04,"temp_max":292.04,"pressure":1014,"sea_level":1014,"grnd_level":1012,"humidity":42,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.86,"deg":314,"gust":3.86},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-31 18:00:00"},{"dt":1735678800,"main":{"temp":290.6,"feels_like":289.63,"temp_min":290.6,"temp_max":290.6,"pressure":1013,"sea_level":1013,"grnd_level":1011,"humidity":47,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.26,"deg":332,"gust":2.95},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-12-31 21:00:00"},{"dt":1735689600,"main":{"temp":289.61,"feels_like":288.67,"temp_min":289.61,"temp_max":289.61,"pressure":1014,"sea_level":1014,"grnd_level":1012,"humidity":52,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":1.99,"deg":329,"gust":2.41},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-01 00:00:00"},{"dt":1735700400,"main":{"temp":294.04,"feels_like":293.36,"temp_min":294.04,"temp_max":294.04,"pressure":1016,"sea_level":1016,"grnd_level":1014,"humidity":45,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":2.59,"deg":334,"gust":3.34},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-01 03:00:00"},{"dt":1735711200,"main":{"temp":299,"feels_like":298.48,"temp_min":299,"temp_max":299,"pressure":1014,"sea_level":1014,"grnd_level":1013,"humidity":32,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":3.41,"deg":318,"gust":3.91},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-01 06:00:00"},{"dt":1735722000,"main":{"temp":300.23,"feels_like":299.54,"temp_min":300.23,"temp_max":300.23,"pressure":1011,"sea_level":1011,"grnd_level":1010,"humidity":28,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":4.1,"deg":305,"gust":4.36},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-01 09:00:00"},{"dt":1735732800,"main":{"temp":295.53,"feels_like":294.84,"temp_min":295.53,"temp_max":295.53,"pressure":1012,"sea_level":1012,"grnd_level":1010,"humidity":39,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":3.05,"deg":303,"gust":4.25},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-01 12:00:00"},{"dt":1735743600,"main":{"temp":293.66,"feels_like":292.86,"temp_min":293.66,"temp_max":293.66,"pressure":1014,"sea_level":1014,"grnd_level":1012,"humidity":42,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.69,"deg":313,"gust":3.69},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-01 15:00:00"},{"dt":1735754400,"main":{"temp":291.99,"feels_like":291.13,"temp_min":291.99,"temp_max":291.99,"pressure":1014,"sea_level":1014,"grnd_level":1012,"humidity":46,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.74,"deg":326,"gust":3.77},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-01 18:00:00"},{"dt":1735765200,"main":{"temp":290.69,"feels_like":289.83,"temp_min":290.69,"temp_max":290.69,"pressure":1013,"sea_level":1013,"grnd_level":1011,"humidity":51,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":2},"wind":{"speed":2.54,"deg":339,"gust":3.35},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-01 21:00:00"},{"dt":1735776000,"main":{"temp":289.74,"feels_like":288.92,"temp_min":289.74,"temp_max":289.74,"pressure":1013,"sea_level":1013,"grnd_level":1011,"humidity":56,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":2},"wind":{"speed":2.17,"deg":335,"gust":2.68},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-02 00:00:00"},{"dt":1735786800,"main":{"temp":294.05,"feels_like":293.4,"temp_min":294.05,"temp_max":294.05,"pressure":1016,"sea_level":1016,"grnd_level":1014,"humidity":46,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":2.75,"deg":332,"gust":3.62},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-02 03:00:00"},{"dt":1735797600,"main":{"temp":299.17,"feels_like":299.17,"temp_min":299.17,"temp_max":299.17,"pressure":1014,"sea_level":1014,"grnd_level":1012,"humidity":33,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":3.47,"deg":322,"gust":3.87},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-02 06:00:00"},{"dt":1735808400,"main":{"temp":300.46,"feels_like":299.69,"temp_min":300.46,"temp_max":300.46,"pressure":1011,"sea_level":1011,"grnd_level":1009,"humidity":28,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":0},"wind":{"speed":3.37,"deg":327,"gust":3.63},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-02 09:00:00"},{"dt":1735819200,"main":{"temp":295.94,"feels_like":295.24,"temp_min":295.94,"temp_max":295.94,"pressure":1012,"sea_level":1012,"grnd_level":1010,"humidity":37,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":1},"wind":{"speed":3.29,"deg":290,"gust":4.53},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-02 12:00:00"},{"dt":1735830000,"main":{"temp":294.07,"feels_like":293.26,"temp_min":294.07,"temp_max":294.07,"pressure":1014,"sea_level":1014,"grnd_level":1012,"humidity":40,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":1},"wind":{"speed":2.88,"deg":302,"gust":3.97},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-02 15:00:00"},{"dt":1735840800,"main":{"temp":292.13,"feels_like":291.28,"temp_min":292.13,"temp_max":292.13,"pressure":1013,"sea_level":1013,"grnd_level":1012,"humidity":46,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":1},"wind":{"speed":2.84,"deg":312,"gust":3.91},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-02 18:00:00"},{"dt":1735851600,"main":{"temp":290.9,"feels_like":290.06,"temp_min":290.9,"temp_max":290.9,"pressure":1013,"sea_level":1013,"grnd_level":1011,"humidity":51,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":0},"wind":{"speed":2.48,"deg":322,"gust":3.18},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-02 21:00:00"},{"dt":1735862400,"main":{"temp":289.86,"feels_like":289,"temp_min":289.86,"temp_max":289.86,"pressure":1014,"sea_level":1014,"grnd_level":1012,"humidity":54,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":2},"wind":{"speed":2.43,"deg":344,"gust":3.06},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-03 00:00:00"},{"dt":1735873200,"main":{"temp":294.19,"feels_like":293.5,"temp_min":294.19,"temp_max":294.19,"pressure":1015,"sea_level":1015,"grnd_level":1014,"humidity":44,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":12},"wind":{"speed":2,"deg":9,"gust":2.41},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-03 03:00:00"},{"dt":1735884000,"main":{"temp":298.89,"feels_like":298.38,"temp_min":298.89,"temp_max":298.89,"pressure":1013,"sea_level":1013,"grnd_level":1012,"humidity":33,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":39},"wind":{"speed":1.13,"deg":333,"gust":1.01},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-03 06:00:00"},{"dt":1735894800,"main":{"temp":300.38,"feels_like":299.64,"temp_min":300.38,"temp_max":300.38,"pressure":1010,"sea_level":1010,"grnd_level":1009,"humidity":28,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":98},"wind":{"speed":1.6,"deg":303,"gust":1.62},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-03 09:00:00"},{"dt":1735905600,"main":{"temp":296.14,"feels_like":295.51,"temp_min":296.14,"temp_max":296.14,"pressure":1011,"sea_level":1011,"grnd_level":1010,"humidity":39,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":61},"wind":{"speed":2.75,"deg":274,"gust":3.58},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-03 12:00:00"},{"dt":1735916400,"main":{"temp":294.27,"feels_like":293.56,"temp_min":294.27,"temp_max":294.27,"pressure":1013,"sea_level":1013,"grnd_level":1011,"humidity":43,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":34},"wind":{"speed":2.42,"deg":305,"gust":3.12},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-03 15:00:00"},{"dt":1735927200,"main":{"temp":292.77,"feels_like":292.04,"temp_min":292.77,"temp_max":292.77,"pressure":1013,"sea_level":1013,"grnd_level":1011,"humidity":48,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":26},"wind":{"speed":2.31,"deg":334,"gust":2.91},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-03 18:00:00"},{"dt":1735938000,"main":{"temp":291.3,"feels_like":290.55,"temp_min":291.3,"temp_max":291.3,"pressure":1012,"sea_level":1012,"grnd_level":1010,"humidity":53,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":1},"wind":{"speed":1.18,"deg":0,"gust":1.34},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-03 21:00:00"},{"dt":1735948800,"main":{"temp":290.55,"feels_like":289.78,"temp_min":290.55,"temp_max":290.55,"pressure":1012,"sea_level":1012,"grnd_level":1011,"humidity":55,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":2},"wind":{"speed":1.94,"deg":12,"gust":2.13},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2025-01-04 00:00:00"},{"dt":1735959600,"main":{"temp":295.13,"feels_like":294.45,"temp_min":295.13,"temp_max":295.13,"pressure":1015,"sea_level":1015,"grnd_level":1013,"humidity":41,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":{"all":5},"wind":{"speed":1.89,"deg":46,"gust":2.1},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2025-01-04 03:00:00"}]
/// city : {"id":1185241,"name":"Dhaka","coord":{"lat":23.7104,"lon":90.4074},"country":"BD","population":10356500,"timezone":21600,"sunrise":1735519204,"sunset":1735557688}

WeatherDataModel weatherDataModelFromJson(String str) =>
    WeatherDataModel.fromJson(json.decode(str));

String weatherDataModelToJson(WeatherDataModel data) =>
    json.encode(data.toJson());

class WeatherDataModel {
  WeatherDataModel({
    this.cod,
    this.message,
    this.cnt,
    this.list,
    this.city,
  });

  WeatherDataModel.fromJson(dynamic json) {
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['list'] != null) {
      list = [];
      json['list'].forEach((v) {
        list?.add(DataList.fromJson(v));
      });
    }
    city = json['city'] != null ? City.fromJson(json['city']) : null;
  }

  String? cod;
  num? message;
  num? cnt;
  List<DataList>? list;
  City? city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cod'] = cod;
    map['message'] = message;
    map['cnt'] = cnt;
    if (list != null) {
      map['list'] = list?.map((v) => v.toJson()).toList();
    }
    if (city != null) {
      map['city'] = city?.toJson();
    }
    return map;
  }
}

/// id : 1185241
/// name : "Dhaka"
/// coord : {"lat":23.7104,"lon":90.4074}
/// country : "BD"
/// population : 10356500
/// timezone : 21600
/// sunrise : 1735519204
/// sunset : 1735557688

City cityFromJson(String str) => City.fromJson(json.decode(str));

String cityToJson(City data) => json.encode(data.toJson());

class City {
  City({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
    this.sunrise,
    this.sunset,
  });

  City.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    country = json['country'];
    population = json['population'];
    timezone = json['timezone'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  num? id;
  String? name;
  Coord? coord;
  String? country;
  num? population;
  num? timezone;
  num? sunrise;
  num? sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (coord != null) {
      map['coord'] = coord?.toJson();
    }
    map['country'] = country;
    map['population'] = population;
    map['timezone'] = timezone;
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    return map;
  }
}

/// lat : 23.7104
/// lon : 90.4074

Coord coordFromJson(String str) => Coord.fromJson(json.decode(str));

String coordToJson(Coord data) => json.encode(data.toJson());

class Coord {
  Coord({
    this.lat,
    this.lon,
  });

  Coord.fromJson(dynamic json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  num? lat;
  num? lon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lon'] = lon;
    return map;
  }
}

/// dt : 1735538400
/// main : {"temp":296.13,"feels_like":295.87,"temp_min":296.13,"temp_max":300.11,"pressure":1018,"sea_level":1018,"grnd_level":1015,"humidity":53,"temp_kf":-3.98}
/// weather : [{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}]
/// clouds : {"all":0}
/// wind : {"speed":3.19,"deg":359,"gust":3.88}
/// visibility : 10000
/// pop : 0
/// sys : {"pod":"d"}
/// dt_txt : "2024-12-30 06:00:00"

DataList listFromJson(String str) => DataList.fromJson(json.decode(str));

String listToJson(DataList data) => json.encode(data.toJson());

class DataList {
  DataList({
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.visibility,
    this.pop,
    this.sys,
    this.dtTxt,
  });

  DataList.fromJson(dynamic json) {
    dt = json['dt'];
    main = json['main'] != null ? Main.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    visibility = json['visibility'];
    pop = json['pop'];
    sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    dtTxt = json['dt_txt'];
  }

  num? dt;
  Main? main;
  List<Weather>? weather;
  Clouds? clouds;
  Wind? wind;
  num? visibility;
  num? pop;
  Sys? sys;
  String? dtTxt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
    if (main != null) {
      map['main'] = main?.toJson();
    }
    if (weather != null) {
      map['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    if (clouds != null) {
      map['clouds'] = clouds?.toJson();
    }
    if (wind != null) {
      map['wind'] = wind?.toJson();
    }
    map['visibility'] = visibility;
    map['pop'] = pop;
    if (sys != null) {
      map['sys'] = sys?.toJson();
    }
    map['dt_txt'] = dtTxt;
    return map;
  }
}

/// pod : "d"

Sys sysFromJson(String str) => Sys.fromJson(json.decode(str));

String sysToJson(Sys data) => json.encode(data.toJson());

class Sys {
  Sys({
    this.pod,
  });

  Sys.fromJson(dynamic json) {
    pod = json['pod'];
  }

  String? pod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pod'] = pod;
    return map;
  }
}

/// speed : 3.19
/// deg : 359
/// gust : 3.88

Wind windFromJson(String str) => Wind.fromJson(json.decode(str));

String windToJson(Wind data) => json.encode(data.toJson());

class Wind {
  Wind({
    this.speed,
    this.deg,
    this.gust,
  });

  Wind.fromJson(dynamic json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }

  num? speed;
  num? deg;
  num? gust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = speed;
    map['deg'] = deg;
    map['gust'] = gust;
    return map;
  }
}

/// all : 0

Clouds cloudsFromJson(String str) => Clouds.fromJson(json.decode(str));

String cloudsToJson(Clouds data) => json.encode(data.toJson());

class Clouds {
  Clouds({
    this.all,
  });

  Clouds.fromJson(dynamic json) {
    all = json['all'];
  }

  num? all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all'] = all;
    return map;
  }
}

/// id : 800
/// main : "Clear"
/// description : "clear sky"
/// icon : "01d"

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  Weather.fromJson(dynamic json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  num? id;
  String? main;
  String? description;
  String? icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['main'] = main;
    map['description'] = description;
    map['icon'] = icon;
    return map;
  }
}

/// temp : 296.13
/// feels_like : 295.87
/// temp_min : 296.13
/// temp_max : 300.11
/// pressure : 1018
/// sea_level : 1018
/// grnd_level : 1015
/// humidity : 53
/// temp_kf : -3.98

Main mainFromJson(String str) => Main.fromJson(json.decode(str));

String mainToJson(Main data) => json.encode(data.toJson());

class Main {
  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.seaLevel,
    this.grndLevel,
    this.humidity,
    this.tempKf,
  });

  Main.fromJson(dynamic json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    seaLevel = json['sea_level'];
    grndLevel = json['grnd_level'];
    humidity = json['humidity'];
    tempKf = json['temp_kf'];
  }

  num? temp;
  num? feelsLike;
  num? tempMin;
  num? tempMax;
  num? pressure;
  num? seaLevel;
  num? grndLevel;
  num? humidity;
  num? tempKf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = temp;
    map['feels_like'] = feelsLike;
    map['temp_min'] = tempMin;
    map['temp_max'] = tempMax;
    map['pressure'] = pressure;
    map['sea_level'] = seaLevel;
    map['grnd_level'] = grndLevel;
    map['humidity'] = humidity;
    map['temp_kf'] = tempKf;
    return map;
  }
}
