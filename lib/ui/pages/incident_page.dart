
import 'package:codigo2_alerta/services/api_service.dart';
import 'package:flutter/material.dart';

class IncidentPage extends StatelessWidget {

  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {

    apiService.getIncident();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
