import 'package:codigo2_alerta/models/incident_type_model.dart';
import 'package:codigo2_alerta/ui/general/colors.dart';
import 'package:codigo2_alerta/ui/widgets/general_widget.dart';
import 'package:flutter/material.dart';

class RegisterIncidentModal extends StatefulWidget {
  List<IncidentTypeModel> incidentTypeList;

  RegisterIncidentModal({
    required this.incidentTypeList,
  });

  @override
  State<RegisterIncidentModal> createState() => _RegisterIncidentModalState();
}

class _RegisterIncidentModalState extends State<RegisterIncidentModal> {

  int incidentValue = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    incidentValue = widget.incidentTypeList.first.id;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
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
                value: incidentValue,
                isExpanded: true,
                items: widget.incidentTypeList
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.id,
                        child: Text(
                          e.title,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (int? value) {
                  incidentValue = value!;
                  setState(() {

                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
