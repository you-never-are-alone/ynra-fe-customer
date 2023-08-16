//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Point {
  /// Returns a new [Point] instance.
  Point({
    required this.lat,
    required this.lon,
  });

  num lat;

  num lon;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Point &&
     other.lat == lat &&
     other.lon == lon;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lat.hashCode) +
    (lon.hashCode);

  @override
  String toString() => 'Point[lat=$lat, lon=$lon]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'lat'] = lat;
      _json[r'lon'] = lon;
    return _json;
  }

  /// Returns a new [Point] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Point? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Point[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Point[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Point(
        lat: num.parse(json[r'lat'].toString()),
        lon: num.parse(json[r'lon'].toString()),
      );
    }
    return null;
  }

  static List<Point>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Point>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Point.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Point> mapFromJson(dynamic json) {
    final map = <String, Point>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Point.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Point-objects as value to a dart map
  static Map<String, List<Point>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Point>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Point.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lat',
    'lon',
  };
}

