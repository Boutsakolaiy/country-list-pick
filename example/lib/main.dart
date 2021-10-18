import 'dart:ui';

import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

final btnDialogSuccessColor = Color(0xFF02B01B);

// dialog button error color
final btnDialogErrorColor = Color(0xFFE30000);

// dialog button warning color
final btnDialogWarningColor = Color(0xFFFFB800);

// primary color
final color_0953a0 = Color(0xFF0953A0);

// primary dark
final color_527ed2 = Color(0xFF527ed2);

// primary light
final color_002b71 = Color(0xFF002b71);

// surface color light
final colorEe5e5e5 = Color(0xFFE5E5E5);

// surface color dark
final colorDark = Colors.black;

// primary color
final primaryColor = color_0953a0;

// primary light color
final primaryColorDark = color_527ed2;

// primary dart color
final primaryColorLight = color_002b71;

// surface color light
final surfaceColorLight = colorEe5e5e5;

// surface color dark
final surfaceColorDark = colorDark;

class AppTheme {
  static ThemeData light() => ThemeData(
      brightness: Brightness.light,
      buttonTheme: ButtonThemeData(buttonColor: primaryColor),
      buttonColor: primaryColor,
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      // inputDecorationTheme: InputDecorationTheme(
      //     labelStyle: inputDecorationLabelTextStyle,
      //     hintStyle: inputDecorationHintTextStyle),
      scaffoldBackgroundColor: surfaceColorLight);

  /// dark theme
  ///
  /// define dark theme for app
  static ThemeData dark() => ThemeData(
      brightness: Brightness.dark,
      buttonTheme: ButtonThemeData(buttonColor: primaryColor),
      buttonColor: primaryColor,
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      scaffoldBackgroundColor: surfaceColorDark);
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Country Code Pick'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: CountryListPick(
            // appBar: AppBar(
            //   // backgroundColor: Colors.amber,

            //   title: Text(
            //     'Pick your country',
            //   ),
            // ),
            // if you need custom picker use this
            // pickerBuilder: (context, CountryCode countryCode) {
            //   return Row(
            //     children: [
            //       Image.asset(
            //         countryCode.flagUri,
            //         package: 'country_list_pick',
            //       ),
            //       Text(countryCode.code),
            //       Text(countryCode.dialCode),
            //     ],
            //   );
            // },
            // theme: CountryTheme(
            //   isShowFlag: true,
            //   isShowTitle: true,
            //   isShowCode: true,
            //   isDownIcon: true,
            //   // showEnglishName: false,
            // ),
            initialSelection: '+62',

            // or
            // initialSelection: 'US'
            onChanged: (CountryCode code) {
              print(code.name);
              print(code.code);
              print(code.dialCode);
              print(code.flagUri);
            },
          ),
        ),
      ),
    );
  }
}

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Country Code Pick'),
//           backgroundColor: Colors.amber,
//         ),
//         body: Center(
//           child: CountryListPick(
//             appBar: AppBar(
//               backgroundColor: Colors.amber,
//               title: Text('Pick your country'),
//             ),
//             // if you need custom picker use this
//             // pickerBuilder: (context, CountryCode countryCode) {
//             //   return Row(
//             //     children: [
//             //       Image.asset(
//             //         countryCode.flagUri,
//             //         package: 'country_list_pick',
//             //       ),
//             //       Text(countryCode.code),
//             //       Text(countryCode.dialCode),
//             //     ],
//             //   );
//             // },
//             theme: CountryTheme(
//               isShowFlag: true,
//               isShowTitle: true,
//               isShowCode: true,
//               isDownIcon: true,
//               showEnglishName: false,
//               labelColor: Colors.blueAccent,
//             ),
//             initialSelection: '+62',
//             // or
//             // initialSelection: 'US'
//             onChanged: (CountryCode code) {
//               print(code.name);
//               print(code.code);
//               print(code.dialCode);
//               print(code.flagUri);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
