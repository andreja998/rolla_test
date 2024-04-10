import 'package:flutter/material.dart';
import 'package:rolla_zadatak/config/dimens.dart';

class PrimaryInput extends StatelessWidget {
  final String labelText;
  final String hint;
  final Icon? prefixIcon;
  final bool obscureText;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;
  final Function(String?)? validator;
  final TextEditingController? controller;

  const PrimaryInput(
      {this.onChanged,
      this.validator,
      required this.labelText,
      this.prefixIcon,
      this.hint = '',
      this.obscureText = false,
      this.textInputAction = TextInputAction.none,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
          child: Text(
            labelText,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        TextFormField(
            style: Theme.of(context).textTheme.bodyMedium,
            obscureText: obscureText,
            autocorrect: false,
            controller: controller,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              hintText: hint,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            ),
            onChanged: (value) => {
                  if (onChanged != null) {onChanged!(value)}
                },
            validator: (_) => validator!(_)),
      ],
    );
  }
}
