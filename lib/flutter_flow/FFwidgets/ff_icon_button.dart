import 'package:flutter/material.dart';

class FFIconButton extends StatelessWidget {
  const FFIconButton({
    super.key,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.buttonSize,
    this.fillColor,
    this.icon,
    required this.onPressed,
    this.showLoadingIndicator = false,
  });

  final Color? borderColor;
  final double? borderRadius;
  final double? borderWidth;
  final double? buttonSize;
  final Color? fillColor;
  final Widget? icon;
  final VoidCallback? onPressed;
  final bool showLoadingIndicator;

  @override
  Widget build(BuildContext context) => Material(
        borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
          onTap: onPressed,
          child: Container(
            width: buttonSize,
            height: buttonSize,
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
              border: Border.all(
                color: borderColor ?? Colors.transparent,
                width: borderWidth ?? 0,
              ),
            ),
            child: icon,
          ),
        ),
      );
}


