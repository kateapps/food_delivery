import 'package:freezed_annotation/freezed_annotation.dart';

part 'pgen.freezed.dart';
part 'pgen.g.dart';

@freezed
class PGen with _$PGen {
  factory PGen(
    String title,
    String description,
  ) = _PGen;

  factory PGen.fromJson(Map<String, dynamic> json) => _$PGenFromJson(json);
}
