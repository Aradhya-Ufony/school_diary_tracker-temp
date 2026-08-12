import 'dart:convert';
import 'package:flutter/services.dart';
import '../../data/models/country.dart';

abstract class CountryLoader {
  static Future<List<Country>> loadCountries() async {
    final jsonString = await rootBundle.loadString('assets/data/countries.json');
    final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;
    final countries = jsonList
        .map((e) => Country.fromJson(e as Map<String, dynamic>))
        .toList();
    countries.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    return countries;
  }
}
