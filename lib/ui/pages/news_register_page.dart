import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:codigo2_alerta/ui/widgets/button_custom_widget.dart';
import 'package:codigo2_alerta/ui/widgets/general_widget.dart';
import 'package:codigo2_alerta/ui/widgets/textfield_custom_widget.dart';
import 'package:flutter/material.dart';

class NewsRegisterPage extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kFontPrimaryColor,
        ),
        leading: IconButton(
          onPressed: () {
            //...
            Navigator.pop(context);
          },
          icon: Icon(Icons.share),
        ),
        title: Text(
          "Registrar Noticia",
          style: TextStyle(
            color: kFontPrimaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFieldCustomWidget(
                controller: _titleController,
                label: "Título",
                hintText: "Ingresa un título",
              ),
              spacing14,
              TextFieldCustomWidget(
                controller: _linkController,
                label: "Link",
                hintText: "Ingresa un link",
              ),
              spacing14,
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                        )
                      ),
                      icon: Icon(Icons.camera),
                      label: Text(
                        "Cámara",
                      ),
                    ),
                  ),
                  spacingWidth12,
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                          )
                      ),
                      icon: Icon(Icons.image),
                      label: Text(
                        "Galería",
                      ),
                    ),
                  ),
                ],
              ),
              spacing20,
              ButtonCustomWidget(
                text: "Registrar noticia",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
