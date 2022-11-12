import 'package:codigo2_alerta/models/user_model.dart';
import 'package:codigo2_alerta/services/api_service.dart';
import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:codigo2_alerta/ui/pages/home_page.dart';
import 'package:codigo2_alerta/ui/widgets/general_widget.dart';
import 'package:codigo2_alerta/ui/widgets/textfield_custom_widget.dart';
import 'package:codigo2_alerta/utils/assets_data.dart';
import 'package:codigo2_alerta/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _dniController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  Future _login(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      ApiService apiService = ApiService();
      String _dni = _dniController.text;
      String _password = _passwordController.text;
      isLoading = true;
      setState(() {});
      UserModel? userModel = await apiService.login(_dni, _password);
      if (userModel != null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false);
      } else {
        isLoading = false;
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: !isLoading
          ? SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
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
                        TextFieldCustomWidget(
                          controller: _dniController,
                          label: "Tu número de DNI",
                          hintText: "Ingresa tu DNI",
                          inputTypeEnum: InputTypeEnum.dni,
                        ),
                        spacing30,
                        TextFieldCustomPasswordWidget(
                          controller: _passwordController,
                        ),
                        spacing30,
                        InkWell(
                          onTap: () {
                            _login(context);
                          },
                          child: Container(
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
                        ),
                        spacing30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "¿Aún no estás registrado? ",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.normal,
                                color: kFontPrimaryColor.withOpacity(0.75),
                              ),
                            ),
                            Text(
                              "Regístrate",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: kFontPrimaryColor.withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : const Center(
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2.3,
                ),
              ),
            ),
    );
  }
}
