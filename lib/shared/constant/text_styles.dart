import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';

class MainTheme {
  static final ButtonStyle bookieButtonStyle = OutlinedButton.styleFrom(
    padding: const EdgeInsets.all(8.0),
    foregroundColor: kcPrimaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Large border radius
    ),
    side: const BorderSide(
      color: kcPrimaryColor,
      width: 1.0, // Outline width
    ),
    textStyle: primaryCaptionTextStyle,
    //minimumSize: const Size(120, 35), // Small height
  );

  static final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
    backgroundColor: kcPrimaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0), // Large border radius
    ),
    textStyle: primaryCaptionTextStyle,
    //minimumSize: const Size(120, 35), // Small height
  );

  static final ButtonStyle greyButtonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
    backgroundColor: kcLightTextTwoColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0), // Large border radius
    ),
    //minimumSize: const Size(120, 35), // Small height
  );

  static const TextStyle primaryCaptionTextStyle = TextStyle(
      color: kcPrimaryColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500);

  static const TextStyle primaryFillCaptionTextStyle = TextStyle(
      color: kcWhiteColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500);

  static const TextStyle primaryCaptionLargeTextStyle = TextStyle(
      color: kcPrimaryColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700);

  static const TextStyle defaultCaptionTextStyle = TextStyle(
      color: kcDarkTextOneColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500);

  static const TextStyle userCaptionTextStyle = TextStyle(
      color: kcDarkTextOneColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600);

  static const TextStyle userTitleTextStyle = TextStyle(
      color: kcBlackColor,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700);

  static const TextStyle earnTitleTextStyle = TextStyle(
      color: kcDarkTextOneColor,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700);

  static const TextStyle userFixtureTextStyle = TextStyle(
      color: kcDarkTextTwoColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400);

  static const TextStyle userScoreTextStyle = TextStyle(
      color: kcBlackColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700);

  static const TextStyle userAmountDescTextStyle = TextStyle(
      color: kcDarkTextTwoColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500);

  static const TextStyle userTertiaryTextStyle = TextStyle(
      color: kcDarkTextTwoColor,
      fontSize: 10,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700);

  static const TextStyle userVersusTextStyle = TextStyle(
      color: kcDarkTextOneColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700);

  static const TextStyle userVersusSignTextStyle = TextStyle(
      color: kcDarkTextOneColor,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400);

  static const TextStyle textStyle1 = TextStyle(
      color: kcAccentSixColor,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500);
}