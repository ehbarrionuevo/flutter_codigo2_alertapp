import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:codigo2_alerta/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class CitizenPage extends StatelessWidget {
  const CitizenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Listado de ciudadanos",
                style: TextStyle(
                  color: kFontPrimaryColor.withOpacity(0.80),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacing10,
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 20,
                  separatorBuilder: (context, index) => const Divider(
                    indent: 12.0,
                    endIndent: 12.0,
                  ),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        "Juan Manuel Lopez Montes",
                        style: TextStyle(
                          color: kFontPrimaryColor.withOpacity(0.80),
                          fontSize: 15.0
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          spacing3,
                          Text(
                            "Dirección: Av. Lima 12323",
                            style: TextStyle(
                                color: kFontPrimaryColor.withOpacity(0.55),
                                fontSize: 13.0
                            ),
                          ),
                          spacing3,
                          Text(
                            "Teléfono: 434111222",
                            style: TextStyle(
                                color: kFontPrimaryColor.withOpacity(0.55),
                                fontSize: 13.0
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
