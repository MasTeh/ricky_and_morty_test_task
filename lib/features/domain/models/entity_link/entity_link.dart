import 'package:freezed_annotation/freezed_annotation.dart';
part 'entity_link.freezed.dart';
part 'entity_link.g.dart';

@freezed
class EntityLink with _$EntityLink {
  const factory EntityLink({
    required String name,
    required String url,
  }) = _EntityLink;

  factory EntityLink.fromJson(Map<String, dynamic> json) => _$EntityLinkFromJson(json);
}