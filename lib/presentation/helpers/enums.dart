
enum ScreenSizeTypesEnum {
  phone,
  tablet,
  desktop
}

extension ScreenSizeTypesExtension on ScreenSizeTypesEnum {
  double get value {
    switch(this) {
      case ScreenSizeTypesEnum.phone: return 4/3;
      case ScreenSizeTypesEnum.tablet: return 16/9;
      case ScreenSizeTypesEnum.desktop: return 2.75/1;
    }
  }

  ScreenSizeTypesEnum getScreenSizeType(double width, double height) {
    final aspectRelation = height/width;

    if(aspectRelation < ScreenSizeTypesEnum.tablet.value) {
      return ScreenSizeTypesEnum.phone;
    }

    if(aspectRelation < ScreenSizeTypesEnum.desktop.value) {
      return ScreenSizeTypesEnum.tablet;
    }

    return ScreenSizeTypesEnum.desktop;
  }
}