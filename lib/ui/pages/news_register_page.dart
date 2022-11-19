import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:flutter/material.dart';

class NewsRegisterPage extends StatelessWidget {
  const NewsRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kFontPrimaryColor,
        ),
        title: Text(
          "Registrar Noticia",
          style: TextStyle(
            color: kFontPrimaryColor,
          ),
        ),
      ),
    );
  }
}
