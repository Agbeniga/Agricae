import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextInputAction action;
  final bool obsecure;
  final TextCapitalization textCapitalization;
  final bool autoCorrect;
  final TextInputType textInputType;
  final Widget? prefixIcon;
  final String? hintText;
  final String? labelText;
  final VoidCallback? onSaved;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxline;

  const CustomTextField({
    Key? key,
    this.action = TextInputAction.none,
    this.obsecure = false,
    this.textCapitalization = TextCapitalization.none,
    this.autoCorrect = false,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.hintText,
    this.labelText,
    this.onSaved,
    this.controller,
    this.contentPadding,
    this.maxline = 1,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool passwordVisible = false;

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
      child: TextFormField(
        controller: widget.controller,
        autocorrect: widget.autoCorrect,
        textInputAction: widget.action,

        obscureText: passwordVisible ? false : widget.obsecure,
        textCapitalization: widget.textCapitalization,
        keyboardType: widget.textInputType,
        maxLines: widget.maxline,
        // onSaved: widget.onSaved,
        decoration: InputDecoration(
          contentPadding: widget.contentPadding,
          border: InputBorder.none,
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          hintStyle: const TextStyle(fontSize: 11.0),
          labelStyle: TextStyle(fontSize: 11.0),
          suffixIcon: widget.obsecure
              ? IconButton(
                  icon: Icon(
                    passwordVisible
                        ? Icons.visibility_off
                        : Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
