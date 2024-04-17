// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppointmentModelAdapter extends TypeAdapter<AppointmentModel> {
  @override
  final int typeId = 0;

  @override
  AppointmentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppointmentModel(
      firstName: fields[1] as String,
      secondName: fields[2] as String,
      imageUrl: fields[3] as String,
      date: fields[4] as String,
      time: fields[5] as String,
      phone: fields[6] as String,
      email: fields[7] as String,
      website: fields[8] as String,
      description: fields[9] as String,
      location: fields[10] as String,
      importanceLavel: (fields[11] as List).cast<bool>(),
      leftTime: fields[12] as String,
      otherPersons: (fields[13] as List).cast<String>(),
      documents: (fields[14] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, AppointmentModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.secondName)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.time)
      ..writeByte(6)
      ..write(obj.phone)
      ..writeByte(7)
      ..write(obj.email)
      ..writeByte(8)
      ..write(obj.website)
      ..writeByte(9)
      ..write(obj.description)
      ..writeByte(10)
      ..write(obj.location)
      ..writeByte(11)
      ..write(obj.importanceLavel)
      ..writeByte(12)
      ..write(obj.leftTime)
      ..writeByte(13)
      ..write(obj.otherPersons)
      ..writeByte(14)
      ..write(obj.documents);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppointmentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
