import 'dart:ui';

import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

const color02B01B = Color(0xFF02B01B);

const colorE30000 = Color(0xFFE30000);

const colorFFB800 = Color(0xFFFFB800);

// primary color
const color_0953a0 = Color(0xFF0953A0);

// primary light
const color_527ed2 = Color(0xFF527ed2);

// primary dark
const color_002b71 = Color(0xFF002b71);

// color light
const colorWhite = Colors.white;

//color dark
const colorDark = Color(0xFF121212);

const colorE5e5e5 = Color(0xFFE5E5E5);

// color hint text
const colorHint = Color(0xFF696969);

const colorD2D2D2 = Color(0xFFD2D2D2);

// bottom nav unselected color
const color9CA4A9 = Color(0xFF9CA4A9);

const colorffC7CBD1 = Color(0xffC7CBD1);

const color73BAF9 = Color(0xFF73BAF9);

const color876EA1 = Color(0xFF876EA1);

const color70B3A5 = Color(0xFF70B3A5);

const colorDA394B = Color(0xFFDA394B);

const primaryColor = color_0953a0;

// primary dart color
const primaryColorDark = color_002b71;

// primary light color
const primaryColorLight = color_527ed2;

// dialog button success color
const btnDialogSuccessColor = color02B01B;

// dialog button error color
const btnDialogErrorColor = colorE30000;

// dialog button warning color
const btnDialogWarningColor = colorFFB800;

// bottom nav unselected color
const bottomNavUnselectedColor = color9CA4A9;
// error color
const errorColor = colorE30000;

class AppTheme {
  static ThemeData dark() {
    final backgroundColorDark = colorDark;
    return ThemeData(
        brightness: Brightness.dark,
        buttonTheme: const ButtonThemeData(buttonColor: primaryColor),
        cardTheme: CardTheme(color: backgroundColorDark, elevation: 3),
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
        primaryColorLight: primaryColorLight,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: backgroundColorDark,
        backgroundColor: backgroundColorDark);
  }

  /// dark theme
  ///
  /// define dark theme for app
  static ThemeData light() {
    const backgroundColorLight = colorWhite;

// color promotion pannel
    const colorPromotionPannelLight = colorE5e5e5;

    const colorIconDisappearAppbarLight = color_002b71;

    const mainMenuSectionColor = colorE5e5e5;

    const mainMenuItemBordercolor = colorffC7CBD1;
    return ThemeData(
        brightness: Brightness.light,
        buttonTheme: const ButtonThemeData(buttonColor: primaryColor),
        cardTheme: const CardTheme(color: backgroundColorLight, elevation: 3),
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
        primaryColorLight: primaryColorLight,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: backgroundColorLight,
        scaffoldBackgroundColor: backgroundColorLight,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: primaryColor));
  }
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
