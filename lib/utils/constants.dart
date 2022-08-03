import 'package:flutter/material.dart';

// Colors
Color mainColorTheme1 = const Color(0xff0047FF);
Color unSelectedAppBar = const Color(0xff6892FF);

Map<String, Map<String, Map<String, double>>> measurmentList = {
  "DISTANCE": distancesList,
  "AREA": areasList,
  "MASS": massesList,
  "VOLUME": volumeList,
  "TEMPERATURE": temperatureList,
  "FUEL": fuelList,
  "COOKING": cookingList
};

// Ruler constantsfirst
Map<String, Map<String, double>> distancesList = {
  "metre": {"m": 1},
  "millimetre": {"mm": 1000},
  "centimetre": {"cm": 100},
  "inch": {"in": 39.370079},
  "foot": {"ft": 3.28084},
  "yard": {"yd": 1.093613},
  "kilometre": {"km": 0.001},
  "nautical mile": {"nmi": 0.00054},
};

Map<String, Map<String, double>> areasList = {
  "square metre": {"m²": 1},
  "square millimetre": {"mm²": 100000},
  "square centimetre": {"cm²": 1000},
  "square inch": {"in²": 1550.0031},
  "square foot": {"ft²": 10.76391},
  "square yard": {"yd²": 1.19599},
  "hectare": {"ha": 0.0001},
  "acre": {"ac": 0.000247},
  "square kilometre": {"km²": 0.000001},
  "square mile": {"mi²": 0.000000368},
};

Map<String, Map<String, double>> massesList = {
  "kilogram": {"kg": 1},
  "milligram": {"mg": 1000000},
  "carat": {"ct": 5000},
  "gram": {"g": 1000},
  "ounce": {"ounce": 35.273991},
  "pound": {"lb": 2.204622},
  "stone": {"st": 0.157},
  "ton": {"t": 0.001},
  "short ton": {"ton(US)": 0.0011},
  "long ton": {"ton(UK)": 0.000984},
};

Map<String, Map<String, double>> volumeList = {
  "cubic metre": {"m³": 1},
  "cubic millimetre": {"mm³": 1000000000},
  "cubic centimetre": {"cm³": 1000000},
  "cubic decimetre": {"dm³": 1000},
  "milliliter": {"ml(cc)": 1000000},
  "liter": {"L": 1000},
  "cubic foot": {"ft³": 35.314725},
  "cubic inch": {"in³": 61023.844502},
  "(US)gallon": {"gal(US)": 264.172052},
  "(US)quart": {"qt lqd(US)": 1056.688209},
  "(US)pint": {"pt lqd(US)": 3113.376419},
  "(US)once": {"oz(US)": 33814.022702},
  "(US)cup": {"cup(US)": 4226.752838},
  "(US)tablespoon": {"tbsp(US)": 67628.04504},
  "(US)teaspoon": {"tsp(US)": 202884.136211},
  "(UK)gallon": {"gal(UK)": 219.9691157},
  "(UK)quart": {"qt lqd(UK)": 879.894413},
  "(UK)pint": {"pt lqd(UK)": 1759.633996},
  "(UK)once": {"oz(UK)": 35195.079728},
  "(UK)cup": {"cup(UK)": 3519.503328},
  "(UK)tablespoon": {"tbsp(UK)": 56312.647821},
  "(UK)teaspoon": {"tsp(UK)": 168947.457341},
  "dram": {"dr": 270512.181615},
  "barrel": {"bbl": 6.289811},
  "cord": {"cord": 0.276},
  "gill": {"gill": 8453.799983},
};

Map<String, Map<String, double>> temperatureList = {
  "kelvin": {"K": 1},
  "celsius": {"C": -272},
  "fahrenheit": {"F": -457.6},
};

Map<String, Map<String, double>> fuelList = {
  "liters/100 kilometre": {"L/100km": 1},
  "gallons(UK)/100 miles": {"gal(UK)/100 miles": 0.354},
  "gallons(US)/100 miles": {"gal(US)/100 miles": 0.425},
  "kilometre/liter": {"km/L": 100},
  "(UK) miles per gallon": {"MPG(UK)": 282.480936},
  "(US) miles per gallon": {"MPG(US)": 235.214583},
};

Map<String, Map<String, double>> cookingList = {
  "milliliter": {"mL(cc)": 1},
  "gallon": {"gal(US)": 0.000264},
  "quart": {"qt lqd(US)": 0.00106},
  "pint": {"pt lqd(US)": 0.00211},
  "ounce": {"fl oz(US)": 0.0338},
  "cup": {"cup(US)": 0.00423},
  "tablespoon": {"tbsp(US)": 0.0676},
  "teaspoon": {"tsp(US)": 0.203},
  "gallon(UK)": {"gal(UK)": 0.00022},
  "quart(UK)": {"qt(UK)": 0.00088},
  "pint(UK)": {"pt(UK)": 0.00176},
  "ounce(UK)": {"fl oz(UK)": 0.0352},
  "cup(UK)": {"cup(UK)": 0.00352},
  "tablespoon(UK)": {"tbsp(UK)": 0.0563},
};
