/// 屏幕适配工具

import 'package:shop/utils/global_utils.dart';

class RDimen {
  ///以宽度为比例变换
  static double dpW(double width) {
    return ScreenUtil.instance.setWidth(width);
  }

  ///以高度为比例变换
  static double dpH(double height) {
    return ScreenUtil.instance.setHeight(height);
  }

  static double sp(double fontSize) {
    return ScreenUtil.instance.setSp(fontSize);
  }
}
