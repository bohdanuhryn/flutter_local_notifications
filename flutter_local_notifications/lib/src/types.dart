/// The days of the week.
class Day {
  static const Sunday = Day(1);
  static const Monday = Day(2);
  static const Tuesday = Day(3);
  static const Wednesday = Day(4);
  static const Thursday = Day(5);
  static const Friday = Day(6);
  static const Saturday = Day(7);

  /// All the possible values for the [Day] enumeration.
  static List<Day> get values =>
      [Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday];

  final int value;

  const Day(this.value);
}

/// Used for specifying a time in 24 hour format.
class Time {
  /// The hour component of the time.
  ///
  /// Accepted range is 0 to 23 inclusive.
  final int hour;

  /// The minutes component of the time.
  ///
  /// Accepted range is 0 to 59 inclusive.
  final int minute;

  /// The seconds component of the time.
  ///
  /// Accepted range is 0 to 59 inclusive.
  final int second;

  Time([this.hour = 0, this.minute = 0, this.second = 0]) {
    assert(this.hour >= 0 && this.hour < 24);
    assert(this.minute >= 0 && this.minute < 60);
    assert(this.second >= 0 && this.second < 60);
  }

  /// Create a [Map] object that describes the [Time] object.
  ///
  /// Mainly for internal use to send the data over a platform channel.
  Map<String, int> toMap() {
    return <String, int>{
      'hour': hour,
      'minute': minute,
      'second': second,
    };
  }
}

class NotificationContent {

  final String title;
  final Object body;

  NotificationContent._internal(this.title, this.body);

  NotificationContent(this.title, String body) : this.body = body;

  factory NotificationContent.withBodyAsList(String title, List<String> body) {
    return NotificationContent._internal(title, body);
  }

}
