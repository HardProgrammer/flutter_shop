/// 屏幕适配工具

import 'package:shop/utils/global_utils.dart';

class RDimen {
  ///以宽度为比例变换
  static double dpW(double width) {
    return ScreenUtil().setWidth(width);
  }

  ///以高度为比例变换
  static double dpH(double height) {
    return ScreenUtil().setHeight(height);
  }

  ///以大小为比例变换
  static double sp(double fontSize) {
    return ScreenUtil().setSp(fontSize);
  }
}
