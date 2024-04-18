
enum AppRoutesEnum {
  home
}

extension AppRoutesEnumExtension on AppRoutesEnum {
  String get path {
    switch (this) {
      case AppRoutesEnum.home:
        return '/';
    }
  }
}