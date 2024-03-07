import 'package:flutter/material.dart';

class MyDropDownButton extends StatelessWidget {
  const MyDropDownButton({this.currentValue, this.items, super.key});

  final String? currentValue;
  final List<DropdownMenuItem<String>>? items;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 70, maxHeight: 35),
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 116, 116, 116),
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          )),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            value: currentValue,
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            dropdownColor: const Color.fromARGB(255, 44, 44, 44),
            style: const TextStyle(color: Colors.white),
            iconEnabledColor: Colors.white,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            focusColor: Colors.amber,
            elevation: 0,
            items: items,
            onChanged: (value) {
              print(value);
            },
          ),
        ),
      ),
    );
  }
}
