import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:codigo2_alerta/ui/widgets/general_widget.dart';
import 'package:codigo2_alerta/utils/assets_data.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetData.logo,
                  height: 20.0,
                ),
                spacingWidth6,
                Text(
                  "Alerta App",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: kFontPrimaryColor,
                    letterSpacing: 0.05
                  ),
                ),
              ],
            ),
            spacing6,
            Text(
              "Lorem ipsum dolor sit amet",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: kFontPrimaryColor.withOpacity(0.75),
              ),
            ),
            spacing6,
            TextFormField(
              style: TextStyle(
                color: kFontPrimaryColor.withOpacity(0.80),
                fontSize: 14.0,
              ),
              decoration: InputDecoration(
                hintText: "Ingrese su DNI",
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: kFontPrimaryColor.withOpacity(0.5),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: kFontPrimaryColor.withOpacity(0.14),
                    width: 0.9,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: kFontPrimaryColor.withOpacity(0.14),
                    width: 0.9,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
