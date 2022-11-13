import 'package:codigo2_alerta/models/incident_model.dart';
import 'package:codigo2_alerta/services/api_service.dart';
import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:codigo2_alerta/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class IncidentPage extends StatefulWidget {
  @override
  State<IncidentPage> createState() => _IncidentPageState();
}

class _IncidentPageState extends State<IncidentPage>
    with TickerProviderStateMixin {
  ApiService apiService = ApiService();

  showAddIncidentModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      transitionAnimationController: AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 650),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Registrar Incidente",
                style: TextStyle(
                  fontSize: 18,
                  color: kFontPrimaryColor.withOpacity(0.80),
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacing10,
              Text(
                "Por favor selecciona un incidente para ser enviado a la central.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: kFontPrimaryColor.withOpacity(0.60),
                  fontWeight: FontWeight.normal,
                ),
              ),
              spacing20,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: kFontPrimaryColor.withOpacity(0.12),
                    width: 0.9,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(16.0),
                    elevation: 6,
                    value: 1,
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        value: 1,
                        child: Text(
                          "Mordedura",
                        ),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text(
                          "Robo",
                        ),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddIncidentModal(context);
        },
        backgroundColor: kBrandPrimaryColor,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Listado de Incidentes",
                style: TextStyle(
                  color: kFontPrimaryColor.withOpacity(0.80),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacing20,
              FutureBuilder(
                future: apiService.getIncident(),
                builder: (BuildContext context, AsyncSnapshot snap) {
                  if (snap.hasData) {
                    List<IncidentModel> listData = snap.data;
                    return Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemCount: listData.length,
                        separatorBuilder: (context, index) => const Divider(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              listData[index].tipoIncidente.title,
                              style: TextStyle(
                                  color: kFontPrimaryColor.withOpacity(0.80),
                                  fontSize: 15.0),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                spacing3,
                                Text(
                                  "Ciudadano: ${listData[index].datosCiudadano.nombres}",
                                  style: TextStyle(
                                      color:
                                          kFontPrimaryColor.withOpacity(0.55),
                                      fontSize: 13.0),
                                ),
                                spacing3,
                                Text(
                                  "Teléfono: ${listData[index].datosCiudadano.telefono}",
                                  style: TextStyle(
                                      color:
                                          kFontPrimaryColor.withOpacity(0.55),
                                      fontSize: 13.0),
                                ),
                              ],
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  listData[index].hora,
                                  style: TextStyle(
                                      color:
                                          kFontPrimaryColor.withOpacity(0.55),
                                      fontSize: 13.0),
                                ),
                                spacing3,
                                Text(
                                  listData[index].fecha,
                                  style: TextStyle(
                                      color:
                                          kFontPrimaryColor.withOpacity(0.55),
                                      fontSize: 13.0),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  }
                  return CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
