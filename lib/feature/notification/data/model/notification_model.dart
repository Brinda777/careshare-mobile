class NotificationModel {
  final String title;
  final String description;

  final String time;
  final String notificationDuration;
  final String date;
  final String type;
  final String status;
  final String id;

  NotificationModel({
    required this.title,
    required this.description,
    required this.time,
    required this.date,
    required this.notificationDuration,
    required this.type,
    required this.status,
    required this.id,
  });
}
