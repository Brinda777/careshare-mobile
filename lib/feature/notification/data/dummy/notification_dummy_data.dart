import 'package:care_share_nepal/feature/notification/data/model/notification_model.dart';

final List<NotificationModel> notificationDummyData = [
  NotificationModel(
    title: 'Earth quick update',
    description:
        'A 7.0 magnitude earthquake has just hit Sindupalchowk!Stay safe and stay alert—updates are pouring in. If you\'re safe, click "Safe" to let everyone know you\'re okay. Your well-being is our top priority. Stay tuned for more updates!',
    time: '10:00 AM',
    date: '10/10/2025',
    type: 'Emergency',
    status: 'Unread',
    notificationDuration: '10m',
    id: '1',
  ),
  NotificationModel(
    title: 'Flood Warning',
    description:
        'Heavy rainfall has caused severe flooding in Chitwan district. Residents in low-lying areas are advised to evacuate immediately. Emergency services are mobilized. Stay away from flooded areas and follow official guidance.',
    time: '2:30 PM',
    date: '15/10/2025',
    type: 'Emergency',
    status: 'Read',
    notificationDuration: '2h',
    id: '2',
  ),
  NotificationModel(
    title: 'Donation Drive Success',
    description:
        'Thank you for your generous support! Our recent donation drive collected over 1000 blankets for earthquake victims. Your contributions are making a real difference in people\'s lives.',
    time: '9:15 AM',
    date: '12/10/2025',
    type: 'Update',
    status: 'Unread',
    notificationDuration: '1d',
    id: '3',
  ),
  NotificationModel(
    title: 'Volunteer Opportunity',
    description:
        'We need volunteers for disaster relief in Pokhara region. If you can help with medical assistance, logistics, or general support, please register through the app. Training will be provided.',
    time: '4:45 PM',
    date: '11/10/2025',
    type: 'Alert',
    status: 'Read',
    notificationDuration: '3d',
    id: '4',
  ),
];
