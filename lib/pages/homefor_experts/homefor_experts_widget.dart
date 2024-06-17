import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homefor_experts_model.dart';
export 'homefor_experts_model.dart';

class HomeforExpertsWidget extends StatefulWidget {
  const HomeforExpertsWidget({super.key});

  @override
  State<HomeforExpertsWidget> createState() => _HomeforExpertsWidgetState();
}

class _HomeforExpertsWidgetState extends State<HomeforExpertsWidget> {
  late HomeforExpertsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeforExpertsModel());
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 20.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Responses Today',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '5',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF686868),
                                              fontSize: 50.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 25.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Assigned Location',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'Ibafo, \nOgun State',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF686868),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        lineHeight: 1.3,
                                      ),
                                ),
                              ].divide(SizedBox(height: 10.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Container(
                    width: 393.0,
                    height: 137.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
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
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  fillColor: Color(0xCC7A0000),
                                  icon: Icon(
                                    Icons.map,
                                    color: Colors.white,
                                    size: 35.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                              Text(
                                'Map',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
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
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: Icon(
                                    Icons.history_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 35.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('HistoryforExperts');
                                  },
                                ),
                              ),
                              Text(
                                'History',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: Icon(
                                    Icons.healing,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('HospitalsforExperts');
                                  },
                                ),
                              ),
                              Text(
                                'Hospital',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: Icon(
                                    Icons.person,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 35.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('ProfileforExperts');
                                  },
                                ),
                              ),
                              Text(
                                'Profile',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
