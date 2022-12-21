// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MoviesAdapter extends TypeAdapter<Movies> {
  @override
  final int typeId = 0;

  @override
  Movies read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Movies(
      id: fields[0] as int,
      movieName: fields[1] as String,
      movieYear: fields[2] as int,
      movieRating: fields[3] as double,
      movieSummary: fields[4] as String,
      movieImageUrl: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Movies obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.movieName)
      ..writeByte(2)
      ..write(obj.movieYear)
      ..writeByte(3)
      ..write(obj.movieRating)
      ..writeByte(4)
      ..write(obj.movieSummary)
      ..writeByte(5)
      ..write(obj.movieImageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoviesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
