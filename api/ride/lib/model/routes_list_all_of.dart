//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RoutesListAllOf {
  /// Returns a new [RoutesListAllOf] instance.
  RoutesListAllOf({
    this.routes = const [],
  });

  List<Route> routes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoutesListAllOf &&
     other.routes == routes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (routes.hashCode);

  @override
  String toString() => 'RoutesListAllOf[routes=$routes]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
      _json[r'routes'] = routes;
    return _json;
  }

  /// Returns a new [RoutesListAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoutesListAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoutesListAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoutesListAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoutesListAllOf(
        routes: Route.listFromJson(json[r'routes']) ?? const [],
      );
    }
    return null;
  }

  static List<RoutesListAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoutesListAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoutesListAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoutesListAllOf> mapFromJson(dynamic json) {
    final map = <String, RoutesListAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoutesListAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoutesListAllOf-objects as value to a dart map
  static Map<String, List<RoutesListAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoutesListAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoutesListAllOf.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

