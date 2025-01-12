import 'package:care_share_nepal/core/constants/image_constants.dart';
import 'package:care_share_nepal/feature/donate_item/data/model/donate_item_model.dart';

final List<DonateItemModel> donateItemMedicineDummyData = [
  DonateItemModel(
    id: 301,
    title: 'Paracetamol',
    image: ImageConstants
        .winterJacket, // Using placeholder image since no medicine images defined
    description: 'Fever and pain relief tablets',
    quantity: 20,
    unit: 'tablets',
    price: 100,
  ),
  DonateItemModel(
    id: 302,
    title: 'First Aid Kit',
    image: ImageConstants.winterJacket,
    description: 'Basic first aid supplies',
    quantity: 1,
    unit: 'kit',
    price: 500,
  ),
  DonateItemModel(
    id: 303,
    title: 'Bandages',
    image: ImageConstants.winterJacket,
    description: 'Sterile bandages for wounds',
    quantity: 10,
    unit: 'pieces',
    price: 200,
  ),
  DonateItemModel(
    id: 304,
    title: 'Antiseptic Solution',
    image: ImageConstants.winterJacket,
    description: 'For cleaning wounds and cuts',
    quantity: 1,
    unit: 'bottle',
    price: 150,
  ),
  DonateItemModel(
    id: 305,
    title: 'Cough Syrup',
    image: ImageConstants.winterJacket,
    description: 'Relief from cough and cold',
    quantity: 1,
    unit: 'bottle',
    price: 180,
  ),
  DonateItemModel(
    id: 306,
    title: 'ORS Packets',
    image: ImageConstants.winterJacket,
    description: 'Oral rehydration solution',
    quantity: 10,
    unit: 'packets',
    price: 120,
  ),
  DonateItemModel(
    id: 307,
    title: 'Medical Masks',
    image: ImageConstants.winterJacket,
    description: 'Disposable medical face masks',
    quantity: 50,
    unit: 'pieces',
    price: 300,
  ),
];
