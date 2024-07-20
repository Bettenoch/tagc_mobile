import 'package:flutter/material.dart';
import 'package:tagc_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:tagc_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:tagc_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:tagc_app/utils/theme/custom_themes/text_field_theme.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/text_theme.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme= ThemeData(
    useMaterial3: true,
    fontFamily: 'Raleway',
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,


  );
  static ThemeData darkTheme= ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );

}
