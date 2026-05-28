import 'package:macrofactor_clone/data/enums/measurement_units.dart';
import 'package:macrofactor_clone/data/models/food_model.dart';

class FoodEntryModel {
  final Food food;
  final DateTime dateTime;
  final double quantity;
  MeasurementUnits measurements = MeasurementUnits.grams;

  FoodEntryModel({
    required this.food,
    required this.dateTime,
    required this.quantity,
    required this.measurements,
  });
}
