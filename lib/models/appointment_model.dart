import 'package:hive/hive.dart';
part 'appointment_model.g.dart';

@HiveType(typeId: 0)
class AppointmentModel extends HiveObject {
  @HiveField(1)
  final String firstName;
  @HiveField(2)
  final String secondName;
  @HiveField(3)
  final String imageUrl;
  @HiveField(4)
  final String date;
  @HiveField(5)
  final String time;
  @HiveField(6)
  final String phone;
  @HiveField(7)
  final String email;
  @HiveField(8)
  final String website;
  @HiveField(9)
  final String description;
  @HiveField(10)
  final String location;
  @HiveField(11)
  final List<bool> importanceLavel;
  @HiveField(12)
  final String leftTime;
  @HiveField(13)
  final List<String> otherPersons;
  @HiveField(14)
  final List<String> documents;

  AppointmentModel({
    required this.firstName,
    required this.secondName,
    required this.imageUrl,
    required this.date,
    required this.time,
    required this.phone,
    required this.email,
    required this.website,
    required this.description,
    required this.location,
    required this.importanceLavel,
    required this.leftTime,
    required this.otherPersons,
    required this.documents,
  });

  AppointmentModel copyWith({
    String? firstName,
    String? secondName,
    String? imageUrl,
    String? date,
    String? time,
    String? phone,
    String? email,
    String? website,
    String? description,
    String? location,
    List<bool>? importanceLevel,
    String? leftTime,
    List<String>? otherPersons,
    List<String>? documents,
  }) =>
      AppointmentModel(
        firstName: firstName ?? this.firstName,
        secondName: secondName ?? this.secondName,
        imageUrl: imageUrl ?? this.imageUrl,
        date: date ?? this.date,
        time: time ?? this.time,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        website: website ?? this.website,
        description: description ?? this.description,
        location: location ?? this.location,
        importanceLavel: importanceLevel ?? importanceLavel,
        leftTime: leftTime ?? this.leftTime,
        otherPersons: otherPersons ?? this.otherPersons,
        documents: documents ?? this.documents,
      );
}
