import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, String>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<String> {
  ThemeNotifier() : super("primary");

  void changeTheme(String theme) {
    state = theme;
  }
}
