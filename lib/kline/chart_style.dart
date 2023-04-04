import 'package:flutter/material.dart' show Color;

class ChartColors {
  List<Color> bgColor = [const Color(0xff18191d), const Color(0xff18191d)];

  Color kLineColor = const Color(0xff4C86CD);
  Color lineFillColor = const Color(0x554C86CD);
  Color lineFillInsideColor = const Color(0x00000000);
  Color ma5Color = const Color(0xffC9B885);
  Color ma10Color = const Color(0xff6CB0A6);
  Color ma30Color = const Color(0xff9979C6);
  Color upColor = const Color(0xff4DAA90);
  Color dnColor = const Color(0xffC15466);
  Color volColor = const Color(0xff4729AE);

  Color macdColor = const Color(0xff4729AE);
  Color difColor = const Color(0xffC9B885);
  Color deaColor = const Color(0xff6CB0A6);

  Color kColor = const Color(0xffC9B885);
  Color dColor = const Color(0xff6CB0A6);
  Color jColor = const Color(0xff9979C6);
  Color rsiColor = const Color(0xffC9B885);

  Color defaultTextColor = const Color(0xff60738E);

  Color nowPriceUpColor = const Color(0xff4DAA90);
  Color nowPriceDnColor = const Color(0xffC15466);
  Color nowPriceTextColor = const Color(0xffffffff);

  //深度颜色
  Color depthBuyColor = const Color(0xff60A893);
  Color depthSellColor = const Color(0xffC15866);

  //选中后显示值边框颜色
  Color selectBorderColor = const Color(0xff6C7A86);

  //选中后显示值背景的填充颜色
  Color selectFillColor = const Color(0xff0D1722);

  //分割线颜色
  Color gridColor = const Color(0xff4c5c74);

  Color infoWindowNormalColor = const Color(0xffffffff);
  Color infoWindowTitleColor = const Color(0xffffffff);
  Color infoWindowUpColor = const Color(0xff00ff00);
  Color infoWindowDnColor = const Color(0xffff0000);

  Color hCrossColor = const Color(0xffffffff);
  Color vCrossColor = const Color(0x1Effffff);
  Color crossTextColor = const Color(0xffffffff);

  //当前显示内最大和最小值的颜色
  Color maxColor = const Color(0xffffffff);
  Color minColor = const Color(0xffffffff);

  Color getMAColor(int index) {
    switch (index % 3) {
      case 1:
        return ma10Color;
      case 2:
        return ma30Color;
      default:
        return ma5Color;
    }
  }
}

class ChartStyle {
  double topPadding = 30.0;

  double bottomPadding = 20.0;

  double childPadding = 12.0;

  //点与点的距离
  double pointWidth = 11.0;

  //蜡烛宽度
  double candleWidth = 8.5;

  //蜡烛中间线的宽度
  double candleLineWidth = 1.5;

  //vol柱子宽度
  double volWidth = 8.5;

  //macd柱子宽度
  double macdWidth = 3.0;

  //垂直交叉线宽度
  double vCrossWidth = 8.5;

  //水平交叉线宽度
  double hCrossWidth = 0.5;

  //现在价格的线条长度
  double nowPriceLineLength = 1;

  //现在价格的线条间隔
  double nowPriceLineSpan = 1;

  //现在价格的线条粗细
  double nowPriceLineWidth = 1;

  int gridRows = 4;

  int gridColumns = 4;

  //下方時間客製化
  List<String>? dateTimeFormat;
}