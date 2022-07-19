part of influxdb_client_api;

/// Point defines values of a single measurement.
class Point {
  String name;
  SplayTreeMap<String, String> tags = SplayTreeMap();
  SplayTreeMap<String, dynamic> fields = SplayTreeMap();

  //timestamp in epoch nanoseconds
  dynamic timestamp;

  /// Create a new Point with specified a measurement name.
  Point(this.name);

  /// Sets point's measurement.
  static Point measurement(String name) {
    var p = Point(name);
    return p;
  }

  /// Adds a tag.
  Point addTag(String name, String value) {
    tags[name] = value;
    return this;
  }

  /// Adds a tag.
  Point addField(String name, dynamic value) {
    fields[name] = value;
    return this;
  }

  /// Sets point time.
  ///
  /// A [int] or [DateTime] value can be used
  /// to carry an int value of a precision that depends
  /// on WriteApi, nanoseconds by default.
  Point time(dynamic time) {
    if (time is DateTime) {
      timestamp = time;
    } else if (time is num) {
      timestamp = time;
    } else {
      throw ArgumentError('Illegal timestamp type');
    }
    return this;
  }

  /// Creates an InfluxDB protocol line out of this instance.
  /// |measurement,tag_set field_set timestamp
  String toLineProtocol(WritePrecision precision, {Map? defaultTags}) {
    var sb = StringBuffer();

    _escapeKey(sb, name, false);
    _appendTags(sb, defaultTags: defaultTags);
    var appendedFields = _appendFields(sb);
    if (!appendedFields) {
      return '';
    }
    _appendTime(sb, precision);

    return sb.toString();
  }

  void _escapeKey(StringBuffer sb, String key, bool escapeEqual) {
    for (var i = 0; i < key.length; i++) {
      switch (key[i]) {
        case '\n':
          sb.write('\\n');
          continue;
        case '\r':
          sb.write('\\r');
          continue;
        case '\t':
          sb.write('\\t');
          continue;
        case ' ':
        case ',':
          sb.write('\\');
          break;
        case '=':
          if (escapeEqual) {
            sb.write('\\');
          }
          break;
        default:
      }

      sb.write(key[i]);
    }
  }

  void _addTag(String key, String value, StringBuffer sb) {
    if (key.isEmpty || value.isEmpty) {
      return;
    }
    sb.write(',');
    _escapeKey(sb, key, true);
    sb.write('=');
    _escapeKey(sb, value, true);
  }

  void _appendTags(StringBuffer sb, {Map? defaultTags}) {
    if (defaultTags != null) {
      defaultTags.forEach((k, v) => _addTag(k, v, sb));
    }
    tags.forEach((k, v) => _addTag(k, v, sb));
    sb.write(' ');
  }

  bool _appendFields(StringBuffer sb) {
    var appended = false;
    var first = true;
    fields.forEach((key, value) {
      if (value == null) {
        return;
      }
      if (!first) {
        sb.write(',');
      }
      _escapeKey(sb, key, true);
      sb.write('=');
      if (value is num) {
        if (value is int) {
          sb.write(value);
          sb.write('i');
        } else {
          sb.write(value);
        }
      } else if (value is String) {
        sb.write('"');
        _escapeValue(sb, value);
        sb.write('"');
      } else {
        sb.write(value);
      }
      first = false;
      appended = true;
    });

    return appended;
  }

  void _escapeValue(StringBuffer sb, String value) {
    for (var i = 0; i < value.length; i++) {
      switch (value[i]) {
        case '\\':
        case '"':
          sb.write('\\');
          break;
      }
      sb.write(value[i]);
    }
  }

  void _appendTime(StringBuffer sb, WritePrecision precision) {
    if (timestamp == null) {
      return;
    }
    sb.write(' ');
    if (timestamp is int) {
      sb.write(timestamp);
    } else if (timestamp is DateTime) {
      int convertedTime;

      var nanos = (timestamp as DateTime).microsecondsSinceEpoch * 1000;
      switch (precision.value) {
        case 'ns':
          convertedTime = nanos;
          break;
        case 'us':
          convertedTime = (nanos / 1000).round();
          break;
        case 'ms':
          convertedTime = (nanos / 1000000).round();
          break;
        case 's':
          convertedTime = (nanos / 1000000000).round();
          break;
        default:
          throw ArgumentError('Unsupported precision: $precision');
      }

      sb.write(convertedTime);
    }
  }
}
