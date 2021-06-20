import 'package:json_annotation/json_annotation.dart';

part 'contact_dto.g.dart';

@JsonSerializable()
class ContactDTO {
  String id, photo, name, phone, email, birthday, about;

  ContactDTO(
    this.id,
    this.photo,
    this.name,
    this.phone,
    this.email,
    this.birthday,
    this.about,
  );

  factory ContactDTO.fromJson(Map<String, dynamic> json) =>
      _$ContactDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ContactDTOToJson(this);
}
