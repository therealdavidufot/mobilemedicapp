import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'request_acceptedfor_patient_model.dart';
export 'request_acceptedfor_patient_model.dart';

class RequestAcceptedforPatientWidget extends StatefulWidget {
  const RequestAcceptedforPatientWidget({super.key});

  @override
  State<RequestAcceptedforPatientWidget> createState() =>
      _RequestAcceptedforPatientWidgetState();
}

class _RequestAcceptedforPatientWidgetState
    extends State<RequestAcceptedforPatientWidget> {
  late RequestAcceptedforPatientModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestAcceptedforPatientModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 409.0,
                height: 525.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowWebView(
                    content:
                        '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Leaflet Map</title>\n  <link rel=\"stylesheet\" href=\"https://unpkg.com/leaflet/dist/leaflet.css\" />\n  <style>\n    body {\n      font-family: Arial, sans-serif;\n      background: #f6f9ff;\n      margin: 0;\n      padding: 0;\n    }\n    #map {\n      width: 100%;\n      height: 100vh; /* Full viewport height */\n    }\n  </style>\n</head>\n<body>\n  <main>\n    <div id=\"map\"></div>\n  </main>\n  <script src=\"https://unpkg.com/leaflet/dist/leaflet.js\"></script>\n  <script>\n    document.addEventListener(\"DOMContentLoaded\", function() {\n      const map = L.map(\'map\').setView([0, 0], 13);\n      L.tileLayer(\'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png\', {\n        attribution: \'&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors\'\n      }).addTo(map);\n\n      const userIcon = L.icon({\n        iconUrl: \'https://icons.iconarchive.com/icons/icons-land/vista-map-markers/256/Map-Marker-Ball-Azure-icon.png\',\n        iconSize: [32, 32],\n        iconAnchor: [16, 32],\n        popupAnchor: [0, -32]\n      });\n\n      const hospitalIcon = L.icon({\n        iconUrl: \'https://icons.iconarchive.com/icons/google/noto-emoji-travel-places/256/42485-hospital-icon.png\',\n        iconSize: [32, 32],\n        iconAnchor: [16, 32],\n        popupAnchor: [0, -32]\n      });\n\n      const ambulanceIcon = L.icon({\n        iconUrl: \'https://www.flaticon.com/free-icons/ambulance\" title=\"ambulance icons\',\n        iconSize: [32, 32],\n        iconAnchor: [16, 32],\n        popupAnchor: [0, -32]\n      });\n\n      navigator.geolocation.getCurrentPosition(\n        (position) => {\n          const { latitude, longitude } = position.coords;\n          map.setView([latitude, longitude], 13);\n          L.marker([latitude, longitude], { icon: userIcon })\n            .addTo(map)\n            .bindPopup(\"You are here\")\n            .openPopup();\n\n          fetch(`https://overpass-api.de/api/interpreter?data=[out:json];node(around:10000,\${latitude},\${longitude})[amenity=hospital];out;`)\n            .then(response => response.json())\n            .then(data => {\n              data.elements.forEach(element => {\n                const hospital = {\n                  name: element.tags.name || \"Unnamed Hospital\",\n                  latitude: element.lat,\n                  longitude: element.lon\n                };\n                L.marker([hospital.latitude, hospital.longitude], { icon: hospitalIcon })\n                  .addTo(map)\n                  .bindPopup(hospital.name);\n              });\n\n              // Add two dummy hospitals\n              const dummyHospitals = [\n                {name: \"Dummy Hospital 1\", latitude: latitude + 0.01, longitude: longitude + 0.01},\n                {name: \"Dummy Hospital 2\", latitude: latitude - 0.01, longitude: longitude - 0.01}\n              ];\n\n              dummyHospitals.forEach(hospital => {\n                L.marker([hospital.latitude, hospital.longitude], { icon: hospitalIcon })\n                  .addTo(map)\n                  .bindPopup(hospital.name);\n              });\n\n              // Add two ambulance users\n              const ambulances = [\n                {name: \"Ambulance 1\", latitude: latitude + 0.02, longitude: longitude + 0.02},\n                {name: \"Ambulance 2\", latitude: latitude - 0.02, longitude: longitude - 0.02}\n              ];\n\n              ambulances.forEach(ambulance => {\n                L.marker([ambulance.latitude, ambulance.longitude], { icon: ambulanceIcon })\n                  .addTo(map)\n                  .bindPopup(ambulance.name);\n              });\n            })\n            .catch(error => console.error(\"Error fetching hospitals:\", error));\n        },\n        error => {\n          console.error(\"Error getting user location:\", error);\n        }\n      );\n    });\n  </script>\n</body>\n</html>',
                    height: 893.0,
                    verticalScroll: false,
                    horizontalScroll: false,
                    html: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1626958390898-162d3577f293?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxtZWNoYW5pY2FsJTIwa2V5Ym9hcmR8ZW58MHx8fHwxNzE2NTA0NTg2fDA&ixlib=rb-4.0.3&q=80&w=1080',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'David',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'is coming',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF686868),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'General Specialist',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF00B202),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 281.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: Color(0x8B59B453),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          '10 minutes away',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            icon: Icon(
                              Icons.call,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 35.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('HomeforExperts');
                            },
                          ),
                        ),
                        Text(
                          'Call',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            icon: Icon(
                              Icons.sms,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('HistoryforExperts');
                            },
                          ),
                        ),
                        Text(
                          'Message',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: Color(0xFFB20000),
                            icon: Icon(
                              Icons.cancel_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('HomeforPatient');
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Cancel \nRequest',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  lineHeight: 1.0,
                                ),
                          ),
                        ),
                      ],
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
