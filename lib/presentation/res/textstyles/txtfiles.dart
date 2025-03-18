import 'package:flutter_brighthr_task/presentation/res/app_theme.dart';
import 'package:flutter_brighthr_task/presentation/res/colors.dart';
import 'package:flutter_brighthr_task/presentation/res/dimens.dart';
import 'package:flutter/material.dart';

extension TextStylesExt on BuildContext {
  BuildContext get context => this;

  TextStyle? get displayMediumBold => context.textTheme.displayMedium?.copyWith(
    fontSize: context.textScaleFactor * 28,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  TextStyle? get displayMedium => context.textTheme.displayMedium?.copyWith(
    fontSize: context.textScaleFactor * 28,
  );

  TextStyle? get displayMedium36 => context.textTheme.displayMedium?.copyWith(
    fontSize: context.textScaleFactor * 36,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get displaySmall22BoldDarkGrey =>
      context.textTheme.headlineLarge?.copyWith(
        fontSize: context.textScaleFactor * 20,
        fontWeight: FontWeight.w600,
        color: AppColors.darkGray,
      );

  TextStyle? get displaySmall18BoldBlack =>
      context.textTheme.displaySmall!.copyWith(
        fontSize: context.textScaleFactor * 18,
        fontWeight: FontWeight.w800,
        color: AppColors.black,
      );

  TextStyle? get displaySmall14NormalCharcoal =>
      context.textTheme.displaySmall!.copyWith(
        fontSize: context.textScaleFactor * 14,
        fontWeight: FontWeight.normal,
        color: AppColors.charcoal,
      );

  TextStyle? get displaySmall17BoldBlack =>
      context.textTheme.displaySmall!.copyWith(
        fontSize: context.textScaleFactor * 17,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      );

  TextStyle? get t63 => context.textTheme.displaySmall!.copyWith(
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
  );

  TextStyle? get t91 => context.textTheme.displaySmall!.copyWith(
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w300,
    color: AppColors.ceruleanBlue,
  );

  TextStyle? get t64 => context.textTheme.displaySmall!.copyWith(
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w300,
    color: AppColors.googleButtonBorderColor,
  );

  TextStyle? get t99 => context.textTheme.displaySmall?.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: context.textScaleFactor * 18,
  );

  TextStyle? get t16 => context.textTheme.displaySmall!.copyWith(
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  TextStyle? get t3 => context.textTheme.displaySmall?.copyWith(
    fontSize: context.textScaleFactor * 20,
    fontWeight: FontWeight.w700,
    color: AppColors.darkGray,
  );

  TextStyle? get t14 => context.textTheme.displaySmall!.copyWith(
    fontSize: context.textScaleFactor * 20,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  TextStyle? get t2 => context.textTheme.displaySmall?.copyWith(
    fontSize: context.textScaleFactor * 16,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGray,
  );

  TextStyle? get t53 => context.textTheme.displaySmall?.copyWith(
    fontSize: context.textScaleFactor * 20,
    color: AppColors.darkPurple,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t54 => context.textTheme.displaySmall?.copyWith(
    fontSize: context.textScaleFactor * 20,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t9 =>
      context.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold);

  TextStyle? get t38 => context.textTheme.displaySmall?.copyWith(
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  TextStyle? get t11 => context.textTheme.displaySmall!.copyWith(
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  TextStyle? get t12 => context.textTheme.displaySmall!.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  TextStyle? get tdropdown => context.textTheme.displaySmall!.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.blueTransparent00,
    fontSize: 18,
  );

  TextStyle? get t13 => context.textTheme.displaySmall!.copyWith(
    fontSize: context.textScaleFactor * 28,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  TextStyle? get t51 =>
      context.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get t66 =>
      context.textTheme.displaySmall?.copyWith(color: AppColors.black);

  TextStyle? get t67 => context.textTheme.displaySmall?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t68 => context.textTheme.displaySmall?.copyWith(
    fontSize: context.textScaleFactor * 22,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t76 => context.textTheme.displaySmall?.copyWith(
    fontSize: context.textScaleFactor * 20,
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t86 =>
      context.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get t108 => context.textTheme.displaySmall!.copyWith(
    fontSize: context.textScaleFactor * 14,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
  );

  TextStyle? get t109 => context.textTheme.displaySmall!.copyWith(
    fontSize: context.textScaleFactor * 14,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  TextStyle? get t4 => context.textTheme.headlineLarge?.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: context.textScaleFactor * 22,
    color: AppColors.ceruleanBlue,
  );

  TextStyle? get t5 => context.textTheme.labelLarge!.copyWith(
    fontSize: context.textScaleFactor * 22,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t6 => context.textTheme.labelLarge!.copyWith(
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w300,
  );

  TextStyle? get t7 => context.textTheme.labelLarge!.copyWith(
    fontSize: context.textScaleFactor * 22,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t8 => context.textTheme.labelLarge!.copyWith(
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w300,
  );

  TextStyle? get t10 => context.textTheme.headlineMedium?.copyWith(
    // fontWeight: FontWeight.w600,
  );

  TextStyle? get t17 => context.textTheme.headlineLarge?.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: context.textScaleFactor * double20,
  );

  TextStyle? get t18 => context.textTheme.headlineLarge?.copyWith(
    fontSize: context.textScaleFactor * 20,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t19 => context.textTheme.headlineLarge?.copyWith(
    fontSize: context.textScaleFactor * 20,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t20 =>
      context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w300);

  TextStyle? get t21 => context.textTheme.headlineLarge?.copyWith(
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.bold,
  );

  TextStyle? get t22 =>
      context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w400);

  TextStyle? get t23 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
    fontSize: context.textScaleFactor * 20,
  );

  TextStyle? get t24 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
    fontSize: 32,
  );

  TextStyle? get t25 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.grayish,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );

  TextStyle? get t27 =>
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 12);

  TextStyle? get t27White => const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: AppColors.white,
  );

  TextStyle? get t28 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get t29 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t30 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t31 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get t32 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t34 =>
      context.textTheme.headlineLarge?.copyWith(color: AppColors.black);

  TextStyle? get t36 => context.textTheme.headlineLarge?.copyWith(
    fontSize: context.textScaleFactor * 20,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get t37 => context.textTheme.titleLarge?.copyWith(fontSize: 14);

  TextStyle? get t39 =>
      context.textTheme.headlineLarge?.copyWith(color: AppColors.darkGray);

  TextStyle? get t40 => context.textTheme.headlineMedium;

  TextStyle? get t41 => context.textTheme.headlineLarge?.copyWith(
    fontSize: context.textScaleFactor * 20,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get t49 =>
      context.textTheme.headlineLarge?.copyWith(color: AppColors.darkPurple);

  TextStyle? get t50 => const TextStyle(color: Colors.red);

  TextStyle? get t52 => context.textTheme.headlineLarge;

  TextStyle? get t56 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
    fontSize: context.textScaleFactor * 20,
  );

  TextStyle? get text16 => TextStyle(
    fontSize: context.textScaleFactor * 16,
    fontWeight: FontWeight.w500,
  );

  TextStyle? get t57 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.grayish,
    fontWeight: FontWeight.w700,
    fontSize: context.textScaleFactor * 20,
  );

  TextStyle? get t55 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
    fontSize: context.textScaleFactor * 20,
  );

  TextStyle? get t59 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get t59W600 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.blackText2,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t61 => context.textTheme.headlineLarge;

  TextStyle? get t62 => context.textTheme.headlineLarge!.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.timerTextColor,
  );

  TextStyle? get t65 =>
      context.textTheme.headlineMedium?.copyWith(color: AppColors.blueColor);

  TextStyle? get t69 =>
      context.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w400);

  TextStyle? get t72 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
    fontSize: context.textScaleFactor * 18,
  );

  TextStyle? get t73 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  TextStyle? get t74 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w400,
  );

  TextStyle? get t75 => context.textTheme.titleLarge?.copyWith(
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w500,
  );

  TextStyle? get t77 => context.textTheme.titleMedium?.copyWith(
    color: AppColors.charcoal,
    fontWeight: FontWeight.w300,
  );

  TextStyle? get t78 => TextStyle(
    color: Colors.white,
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t79 => TextStyle(
    color: Colors.white,
    fontSize: context.textScaleFactor * 16,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t80 => TextStyle(
    color: const Color(0xFF737188),
    fontSize: context.textScaleFactor * 16,
    fontWeight: FontWeight.w400,
    height: 0,
  );

  TextStyle? get t81 =>
      context.textTheme.titleMedium?.copyWith(color: AppColors.darkPurple);

  TextStyle? get t82 => context.textTheme.headlineSmall;

  TextStyle? get t83 => context.textTheme.labelLarge?.copyWith(
    fontSize: context.textScaleFactor * 22,
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t84 => context.textTheme.labelLarge!.copyWith(
    fontSize: context.textScaleFactor * 18,
    fontWeight: FontWeight.w300,
  );

  TextStyle? get t85 =>
      context.textTheme.headlineLarge?.copyWith(color: AppColors.darkPurple);

  TextStyle? get t87 => context.textTheme.headlineLarge!.copyWith(
    fontSize: context.textScaleFactor * 20,
    fontWeight: FontWeight.w300,
  );

  TextStyle? get t88 => context.textTheme.headlineLarge!.copyWith(
    fontSize: context.textScaleFactor * 24,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get t89 => context.textTheme.headlineLarge!.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.timerTextColor,
  );

  TextStyle? get t94 =>
      context.textTheme.headlineLarge?.copyWith(color: AppColors.darkPurple);

  TextStyle? get t95 => context.textTheme.headlineMedium?.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: context.textScaleFactor * 14,
    color: AppColors.appleButtonBorderColor,
  );

  TextStyle? get t96 => context.textTheme.headlineLarge?.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: context.textScaleFactor * 20,
  );

  TextStyle? get t97 => context.textTheme.labelLarge?.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.appBarTextColor,
  );

  TextStyle? get t98 =>
      context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w500);

  TextStyle? get t100 => context.textTheme.titleLarge?.copyWith(
    color: AppColors.appleButtonBorderColor,
  );

  TextStyle? get t101 => context.textTheme.titleLarge;

  TextStyle? get t102 => context.textTheme.headlineMedium?.copyWith(
    fontWeight: FontWeight.w500,
    color: AppColors.appleButtonBorderColor,
  );

  TextStyle? get t103 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontSize: context.textScaleFactor * (16),
    fontWeight: FontWeight.w400,
  );

  TextStyle? get t104 => context.textTheme.headlineLarge?.copyWith(
    color: AppColors.black,
    fontSize: context.textScaleFactor * (20),
    fontWeight: FontWeight.w600,
  );

  TextStyle? get t105 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.darkPurple,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get t106 => context.textTheme.titleLarge!.copyWith(
    fontWeight: FontWeight.w800,
    color: AppColors.protfolioTextColor,
  );

  TextStyle? get t111 => context.textTheme.headlineLarge?.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: context.textScaleFactor * 18,
    color: AppColors.black,
  );

  TextStyle? get t112 =>
      context.textTheme.headlineLarge?.copyWith(color: AppColors.white);

  TextStyle? get t113 => context.textTheme.titleLarge!.copyWith(
    fontWeight: FontWeight.w900,
    color: AppColors.protfolioTextColor,
  );

  TextStyle? get t114 => context.textTheme.headlineMedium?.copyWith(
    color: AppColors.darkBlue,
    fontWeight: FontWeight.w700,
  );

  TextStyle? get t115 => context.textTheme.titleLarge!.copyWith(
    fontWeight: FontWeight.w700,
    color: AppColors.protfolioTextColor,
  );

  TextStyle? get t116 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w400,
    color: AppColors.slateGrey,
  );

  TextStyle? get t117 => context.textTheme.titleLarge!.copyWith(
    fontWeight: FontWeight.w800,
    color: AppColors.protfolioTextColor,
  );

  TextStyle? get t118 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  TextStyle? get t119 => context.textTheme.titleSmall!.copyWith(
    fontWeight: FontWeight.w400,
    color: AppColors.greenColor,
  );

  TextStyle? get t110 => context.textTheme.titleSmall!.copyWith(
    fontWeight: FontWeight.w400,
    color: AppColors.percentColor,
  );

  TextStyle? get t120 => context.textTheme.displaySmall?.copyWith(
    fontSize: context.textScaleFactor * 20,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  TextStyle? get t121 => context.textTheme.headlineMedium?.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.darkPurple,
  );

  TextStyle? get t122 => context.textTheme.headlineMedium?.copyWith(
    fontWeight: FontWeight.w600,
    color: AppColors.mossGreen,
  );

  TextStyle? get t123 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.protfolioTextColor,
  );

  TextStyle? get t124 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.darkGray,
  );

  TextStyle? get t125 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.darkPurple,
  );

  TextStyle? get t126 => context.textTheme.headlineLarge!.copyWith(
    fontWeight: FontWeight.w500,
    color: AppColors.darkPurple,
  );

  TextStyle? get t127 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.darkGray,
  );

  TextStyle? get t128 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: AppColors.darkPurple,
  );

  TextStyle? get t129 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    // color: AppColors.darkPurple,
  );

  TextStyle? get t130 =>
      context.textTheme.titleLarge?.copyWith(color: AppColors.darkGray);

  TextStyle? get t131 =>
      context.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get t132 => context.textTheme.titleLarge?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  TextStyle? get t133 => context.textTheme.titleLarge?.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w400,
  );

  TextStyle? get t134 => context.textTheme.displaySmall?.copyWith(
    color: AppColors.darkGray,
    fontWeight: FontWeight.w500,
  );

  TextStyle? get t136 => context.textTheme.displaySmall?.copyWith(
    fontSize: context.textScaleFactor * 16,
    fontWeight: FontWeight.w500,
    color: AppColors.darkGray,
  );

  TextStyle? get t137 => context.textTheme.titleSmall!.copyWith(
    fontWeight: FontWeight.w500,
    color: AppColors.slateGrey,
  );

  TextStyle? get t138 => context.textTheme.headlineMedium?.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: context.textScaleFactor * 16,
    color: AppColors.appleButtonBorderColor,
  );

  TextStyle? get t139 => context.textTheme.titleLarge!.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: context.textScaleFactor * 12,
    // color: AppColors.percentColor,
  );

  TextStyle? get t140 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w600,
    fontSize: context.textScaleFactor * 16,
    color: AppColors.black,
  );
  TextStyle? get t141 => context.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: context.textScaleFactor * 18,
    color: AppColors.darkPurple,
  );
}
