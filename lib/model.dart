import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'model.freezed.dart';
// part 'model.g.dart';

@freezed
class Model with _$Model {
  const factory Model({
    @Default(0) int number,
    @Default('ssss') String moji,
    @Default([0, 0, 0]) List<int> list,
  }) = _Model;
}
