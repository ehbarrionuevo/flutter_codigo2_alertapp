import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:codigo2_alerta/ui/widgets/general_widget.dart';
import 'package:codigo2_alerta/ui/widgets/textfield_custom_widget.dart';
import 'package:codigo2_alerta/utils/assets_data.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              spacing30,
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
                        letterSpacing: 0.05),
                  ),
                ],
              ),
              spacing30,
              Text(
                "Lorem ipsum dolor sit amet",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: kFontPrimaryColor.withOpacity(0.75),
                ),
              ),
              spacing40,
              TextFieldCustomWidget(),
              spacing30,
              TextFieldCustomPasswordWidget(),
              spacing30,

              Container(
                width: double.infinity,
                height: 48.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                      color: kBrandPrimaryColor.withOpacity(0.4),
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [
                      kBrandPrimaryColor,
                      kBrandPrimaryColor,
                      kBrandPrimaryColor,
                      kBrandSecondaryColor,
                    ],
                  ),
                ),
                child: Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                    color: kFontPrimaryColor.withOpacity(0.75),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
