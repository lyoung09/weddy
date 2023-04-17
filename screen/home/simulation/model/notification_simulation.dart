// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weddynew/apis/category/category_model.dart';

class NotifySimulation {
  final CategoryModel category;
  bool value;

  NotifySimulation({required this.category, required this.value});

  NotifySimulation copyWith({
    CategoryModel? category,
    bool? value,
  }) {
    return NotifySimulation(
      category: category ?? this.category,
      value: value ?? this.value,
    );
  }
}
