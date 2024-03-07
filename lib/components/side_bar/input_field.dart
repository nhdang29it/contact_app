import 'package:contact_app/contrast.dart';
import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({required this.onChanged, super.key});

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Search",
          hintStyle: TextStyle(fontWeight: FontWeight.w600),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
                width: 0.1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          contentPadding: EdgeInsets.all(6.0),
          isDense: true,
          fillColor: Color(0xff222222),
          filled: true),
      onChanged: onChanged,
    );
  }
}
