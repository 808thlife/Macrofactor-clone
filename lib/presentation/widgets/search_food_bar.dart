import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchFoodBar extends StatelessWidget{
  const SearchFoodBar({super.key});
   final late _formKey;


  @override
  void init() {
    final _formKey = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(child: Row(children: [FormField(key: _formKey, ,))],));
  }
}