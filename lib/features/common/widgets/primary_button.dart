import 'package:flutter/material.dart';
import 'package:rolla_zadatak/config/dimens.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final Function onClick;

  PrimaryButton({super.key, required this.child, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick(),
      child: Container(
          height: Dimens.buttonHeight,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).buttonTheme.colorScheme!.background,
              borderRadius: BorderRadius.circular(Dimens.cornerRadius)),
          padding: const EdgeInsets.all(16),
          child: Center(child: child)),
    );
  }
}
