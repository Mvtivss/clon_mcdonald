import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_bar_provider.g.dart';

@riverpod
class SelectedIndex extends _$SelectedIndex {
  @override
  int build() => 0;

  void setIndex(int index) => state = index;
}
