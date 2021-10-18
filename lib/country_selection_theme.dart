import 'package:flutter/material.dart';

class CountryTheme {
  final String? searchText;
  final String? searchHintText;
  final String? lastPickText;
  // final Color? alphabetSelectedBackgroundColor;
  // final Color? alphabetTextColor;
  // final Color? alphabetSelectedTextColor;
  final bool? isShowTitle;
  final bool? isShowFlag;
  final bool? isShowCode;
  final bool? isDownIcon;
  final String? initialSelection;
  final bool? showEnglishName;
  // final Color? labelColor;

  CountryTheme({
    // this.labelColor,
    this.searchText,
    this.searchHintText,
    this.lastPickText,
    // this.alphabetSelectedBackgroundColor,
    // this.alphabetTextColor,
    // this.alphabetSelectedTextColor,
    this.isShowTitle,
    this.isShowFlag,
    this.isShowCode,
    this.isDownIcon,
    this.initialSelection,
    this.showEnglishName,
  });
}

// Color theme
class CountryPickerColorTheme {
  static ColorThemeModel darkMode() => ColorThemeModel(
        labelColor: Colors.white,
        backgroundColor: Colors.white10,
        btnColor: Colors.black,
      );
  static ColorThemeModel lightMode() => ColorThemeModel(
        labelColor: Colors.black,
        backgroundColor: Colors.grey.shade200,
        btnColor: Colors.white,

      );
}

class ColorThemeModel {
  final Color? labelColor;
  final Color? alphabetSelectedBackgroundColor;
  final Color? alphabetSelectedTextColor;
  final Color? backgroundColor;
  final Color? btnColor;

  ColorThemeModel({
    this.labelColor,
    this.alphabetSelectedBackgroundColor,
    this.alphabetSelectedTextColor,
    this.backgroundColor,
    this.btnColor,
  });
}
