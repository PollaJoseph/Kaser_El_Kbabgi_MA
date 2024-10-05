import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:sizer/sizer.dart';

class customTextField extends StatefulWidget {
  final bool obscureText;
  final int? maxLength;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool? showPasswordToggle; // Optional feature

  const customTextField({
    super.key,
    required this.obscureText,
    required this.hintText,
    required this.keyboardType,
    required this.controller,
    this.maxLength,
    this.showPasswordToggle, // Initialize it as optional
  });

  @override
  State<customTextField> createState() => _customTextFieldState();
}

class _customTextFieldState extends State<customTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: TextField(
        maxLength: widget.maxLength,
        obscureText: _obscureText,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        decoration: InputDecoration(
          counterText: "",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:  White),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: White),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: White,
          hintText: widget.hintText.tr,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          suffixIcon: widget.showPasswordToggle == true
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
