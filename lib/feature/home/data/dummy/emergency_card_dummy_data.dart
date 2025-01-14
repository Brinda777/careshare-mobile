import 'package:care_share_nepal/core/constants/image_constants.dart';
import 'package:care_share_nepal/feature/home/data/model/emergency_card_data_model.dart';

final List<EmergencyCardDataModel> emergencyCardData = [
  EmergencyCardDataModel(
    id: '1',
    location: 'Kathmandu',
    attendees: 100,
    title: 'Earthquake rescue operations',
    description:
        'At 4:44 AM this morning, a powerful earthquake measuring 7.2 on the Richter scale struck, causing significant damage to life and property. The tremor was felt across multiple regions, leaving communities in distress and requiring urgent rescue and relief efforts.',
    impact: 'High',
    image: ImageConstants.earthquake,
    funds: 0,
    disaster: 'EARTHQUAKE',
  ),
  EmergencyCardDataModel(
    id: '2',
    location: 'Pokhara',
    attendees: 50,
    title: 'Flood relief needed',
    description:
        'Heavy monsoon rains have caused severe flooding in the Pokhara region. Many families are displaced and in need of immediate assistance. Local authorities are coordinating relief efforts but require additional support from volunteers.',
    impact: 'Medium',
    image: ImageConstants.digaster,
    funds: 0,
    disaster: 'FLOOD',
  ),
  EmergencyCardDataModel(
    id: '3',
    location: 'Chitwan',
    attendees: 75,
    title: 'Landslide emergency response',
    description:
        'A massive landslide has blocked major roads and damaged several homes in the Chitwan district. Search and rescue operations are ongoing, with multiple families reported trapped. Emergency response teams are requesting additional manpower and resources.',
    impact: 'High',
    image: ImageConstants.siron,
    funds: 0,
    disaster: 'LANDSLIDE',
  ),
];
