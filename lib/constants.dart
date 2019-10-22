import 'package:flutter/material.dart';

// Theme colors
const Color kThemeColorYellow = Color(0xFFFCCA30);
const Color kThemeColorRed = Color(0xFFE73930);
const Color kThemeColorPurple = Color(0xFF7D88ED);

// Heading styles
const TextStyle kHeadingStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const TextStyle kSubHeadingStyle = TextStyle(
  fontSize: 18.0,
);

// Prices for extra addons
const double kExtraSyrupPrice = 20.0;
const double kExtraToppingPrice = 20.0;

// Customer order options
const Map<String, String> kChannels = {
  'instore': 'In-store',
  'zomato': 'Zomato',
  'swiggy': 'Swiggy',
};
const Map<String, String> kTaxOptions = {
  'inclusive': 'Taxes included',
  'exclusive': 'Taxes extra',
};

// Tax rates
const double kTaxRateCGST = 0.025;
const double kTaxRateSGST = 0.025;
const double kTaxRateGST = 0.05;
