import 'package:flutter/cupertino.dart';

const double double5 = 5;
const double double8 = 8;
const double double10 = 10;
const double double12 = 12;
const double double14 = 14;
const double double15 = 15;
const double double16 = 16;
const double double20 = 20;
const double double24 = 24;
const double double25 = 25;
const double double26 = 26;
const double double30 = 30;
const double double32 = 32;
const double double34 = 34;
const double double35 = 35;
const double double40 = 40;
const double double44 = 44;
const double double45 = 45;
const double double50 = 50;
const double double55 = 55;
const double double60 = 60;
const double double65 = 65;
const double double70 = 70;
const double double75 = 75;
const double double80 = 80;
const double double85 = 85;
const double double90 = 90;
const double double95 = 95;
const double double100 = 100;
const double double200 = 200;
const double double105 = 105;
const double double110 = 110;
const double double115 = 115;
const double double120 = 120;
const double double125 = 125;

extension Siz on double {
  SizedBox get hSizeBox => SizedBox(
        height: this,
      );

  SizedBox get wSizeBox => SizedBox(
        width: this,
      );

  SliverToBoxAdapter get sliverWSizeBox => SliverToBoxAdapter(
        child: SizedBox(
          width: this,
        ),
      );

  SliverToBoxAdapter get sliverHSizeBox => SliverToBoxAdapter(
        child: SizedBox(
          height: this,
        ),
      );
}
