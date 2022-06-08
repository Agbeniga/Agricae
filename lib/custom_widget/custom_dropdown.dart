import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final Widget? prefixIcon;
  final String? hintText;
  final String? labelText;
  final VoidCallback? onSaved;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;

  final ValueChanged<String>? onChanged;

  const CustomDropdown(
      {Key? key,
      this.prefixIcon,
      this.hintText,
      this.labelText,
      this.onSaved,
      this.controller,
      this.contentPadding,
      this.onChanged})
      : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool passwordVisible = false;

  String? selectedValue = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            offset: Offset(1.0, 1.0),
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          contentPadding: widget.contentPadding,
          border: InputBorder.none,
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          hintStyle: const TextStyle(fontSize: 11.0),
          labelStyle: const TextStyle(fontSize: 11.0),
        ),
        items: [],
        onChanged: (value) {},
        value: selectedValue,
      ),
    );
  }
}
