import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:codigo2_alerta/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bienvenido Ramón",
                style: TextStyle(
                  color: kFontPrimaryColor.withOpacity(0.80),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacing10,
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                style: TextStyle(
                  color: kFontPrimaryColor.withOpacity(0.65),
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              spacing14,
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 14.0,
                  mainAxisSpacing: 14.0,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              // color: Colors.red,
                              offset: const Offset(0, 4),
                              blurRadius: 12.0),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Color(0xfff72585).withOpacity(0.7),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.people,
                              color: Colors.white,
                            ),
                          ),
                          spacing6,
                          Text(
                            "Ciudadanos",
                            style: TextStyle(
                              color: kFontPrimaryColor.withOpacity(0.85),
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.redAccent,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
