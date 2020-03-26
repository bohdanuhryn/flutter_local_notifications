/// The available intervals for periodically showing notifications
enum RepeatInterval { EveryMinute, Hourly, Daily, Weekly }

/// Details of a pending notification that has not been delivered
class PendingNotificationRequest {
  final int id;
  final String title;
  final String body;
  final String payload;

  const PendingNotificationRequest(
      this.id, this.title, this.body, this.payload);
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
