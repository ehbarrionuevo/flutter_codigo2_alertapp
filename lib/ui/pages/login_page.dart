import 'package:codigo2_alerta/ui/general/colors.dart';
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
              children: [
                Image.asset(
                  AssetData.logo,
                  height: 20.0,
                ),
                SizedBox(
                  width: 6.0,
                ),
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
          ],
        ),
      ),
    );
  }
}
