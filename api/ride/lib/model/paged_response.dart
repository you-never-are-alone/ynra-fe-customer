//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PagedResponse {
  /// Returns a new [PagedResponse] instance.
  PagedResponse({
    this.pageSize,
    this.currentPage,
    this.pageAmount,
    this.totalElements,
  });

  /// Size of the page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  /// Current page number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentPage;

  /// The amount of pages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageAmount;

  /// The total amount of elements.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalElements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PagedResponse &&
     other.pageSize == pageSize &&
     other.currentPage == currentPage &&
     other.pageAmount == pageAmount &&
     other.totalElements == totalElements;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pageSize == null ? 0 : pageSize!.hashCode) +
    (currentPage == null ? 0 : currentPage!.hashCode) +
    (pageAmount == null ? 0 : pageAmount!.hashCode) +
    (totalElements == null ? 0 : totalElements!.hashCode);

  @override
  String toString() => 'PagedResponse[pageSize=$pageSize, currentPage=$currentPage, pageAmount=$pageAmount, totalElements=$totalElements]';

  Map<String, dynamic> toJson() {
    final _json = <String, dynamic>{};
    if (pageSize != null) {
      _json[r'pageSize'] = pageSize;
    }
    if (currentPage != null) {
      _json[r'currentPage'] = currentPage;
    }
    if (pageAmount != null) {
      _json[r'pageAmount'] = pageAmount;
    }
    if (totalElements != null) {
      _json[r'totalElements'] = totalElements;
    }
    return _json;
  }

  /// Returns a new [PagedResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PagedResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PagedResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PagedResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PagedResponse(
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        currentPage: mapValueOfType<int>(json, r'currentPage'),
        pageAmount: mapValueOfType<int>(json, r'pageAmount'),
        totalElements: mapValueOfType<int>(json, r'totalElements'),
      );
    }
    return null;
  }

  static List<PagedResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PagedResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PagedResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PagedResponse> mapFromJson(dynamic json) {
    final map = <String, PagedResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PagedResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PagedResponse-objects as value to a dart map
  static Map<String, List<PagedResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PagedResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PagedResponse.listFromJson(entry.value, growable: growable,);
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

