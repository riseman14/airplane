import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final dynamic name;
  final dynamic city;
  final dynamic imageUrl;
  final dynamic rating;
  final dynamic price;

  DestinationModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        imageUrl: json['imageUrl'],
        rating: json['rating'],
        price: json['price'],
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        city,
        imageUrl,
        rating,
        price,
      ];
}
