class IncidentModel {
  IncidentModel({
    this.id,
    this.tipoIncidente,
    this.longitud,
    this.latitud,
    this.fecha,
    this.hora,
    this.ciudadanoNombre,
    this.fechaCreacion,
    this.datosCiudadano,
    this.estadoDisplay,
    this.tipoOrigenDisplay,
    this.personalDisplay,
    this.unidadDisplay,
    this.usuarioDisplay,
    this.estado,
    this.tipoOrigen,
    this.atendido,
    this.atendidoSerenazgo,
    this.calificacion,
    this.calificacionCiudadano,
    this.observacion,
    this.nombres,
    this.dni,
    this.telefono,
    this.imagen,
    this.ciudadano,
    this.usuario,
    this.unidad,
    this.personalSeguridad,
  });

  int id;
  TipoIncidente tipoIncidente;
  double longitud;
  double latitud;
  String fecha;
  String hora;
  String ciudadanoNombre;
  String fechaCreacion;
  DatosCiudadano datosCiudadano;
  String estadoDisplay;
  String tipoOrigenDisplay;
  dynamic personalDisplay;
  dynamic unidadDisplay;
  dynamic usuarioDisplay;
  String estado;
  String tipoOrigen;
  bool atendido;
  bool atendidoSerenazgo;
  int calificacion;
  int calificacionCiudadano;
  dynamic observacion;
  dynamic nombres;
  dynamic dni;
  dynamic telefono;
  dynamic imagen;
  int ciudadano;
  dynamic usuario;
  dynamic unidad;
  dynamic personalSeguridad;

  factory IncidentModel.fromJson(Map<String, dynamic> json) => IncidentModel(
    id: json["id"],
    tipoIncidente: TipoIncidente.fromJson(json["tipoIncidente"]),
    longitud: json["longitud"].toDouble(),
    latitud: json["latitud"].toDouble(),
    fecha: json["fecha"],
    hora: json["hora"],
    ciudadanoNombre: json["ciudadanoNombre"],
    fechaCreacion: json["fechaCreacion"],
    datosCiudadano: DatosCiudadano.fromJson(json["datosCiudadano"]),
    estadoDisplay: json["estado_display"],
    tipoOrigenDisplay: json["tipoOrigen_display"],
    personalDisplay: json["personal_display"],
    unidadDisplay: json["unidad_display"],
    usuarioDisplay: json["usuario_display"],
    estado: json["estado"],
    tipoOrigen: json["tipoOrigen"],
    atendido: json["atendido"],
    atendidoSerenazgo: json["atendidoSerenazgo"],
    calificacion: json["calificacion"],
    calificacionCiudadano: json["calificacionCiudadano"],
    observacion: json["observacion"],
    nombres: json["nombres"],
    dni: json["dni"],
    telefono: json["telefono"],
    imagen: json["imagen"],
    ciudadano: json["ciudadano"],
    usuario: json["usuario"],
    unidad: json["unidad"],
    personalSeguridad: json["personalSeguridad"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "tipoIncidente": tipoIncidente.toJson(),
    "longitud": longitud,
    "latitud": latitud,
    "fecha": fecha,
    "hora": hora,
    "ciudadanoNombre": ciudadanoNombre,
    "fechaCreacion": fechaCreacion,
    "datosCiudadano": datosCiudadano.toJson(),
    "estado_display": estadoDisplay,
    "tipoOrigen_display": tipoOrigenDisplay,
    "personal_display": personalDisplay,
    "unidad_display": unidadDisplay,
    "usuario_display": usuarioDisplay,
    "estado": estado,
    "tipoOrigen": tipoOrigen,
    "atendido": atendido,
    "atendidoSerenazgo": atendidoSerenazgo,
    "calificacion": calificacion,
    "calificacionCiudadano": calificacionCiudadano,
    "observacion": observacion,
    "nombres": nombres,
    "dni": dni,
    "telefono": telefono,
    "imagen": imagen,
    "ciudadano": ciudadano,
    "usuario": usuario,
    "unidad": unidad,
    "personalSeguridad": personalSeguridad,
  };
}



class DatosCiudadano {
  DatosCiudadano({
    this.nombres,
    this.dni,
    this.telefono,
  });

  String nombres;
  String dni;
  String telefono;

  factory DatosCiudadano.fromJson(Map<String, dynamic> json) => DatosCiudadano(
    nombres: json["nombres"],
    dni: json["dni"],
    telefono: json["telefono"],
  );

  Map<String, dynamic> toJson() => {
    "nombres": nombres,
    "dni": dni,
    "telefono": telefono,
  };
}



class TipoIncidente {
  TipoIncidente({
    this.id,
    this.value,
    this.text,
    this.titulo,
    this.area,
    this.nivel,
  });

  int id;
  int value;
  String text;
  String titulo;
  String area;
  String nivel;

  factory TipoIncidente.fromJson(Map<String, dynamic> json) => TipoIncidente(
    id: json["id"],
    value: json["value"],
    text: json["text"],
    titulo: json["titulo"],
    area: json["area"],
    nivel: json["nivel"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "value": value,
    "text": text,
    "titulo": titulo,
    "area": area,
    "nivel": nivel,
  };
}
