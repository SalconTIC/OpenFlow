import 'package:flutter/material.dart';

class FFButtonWidget extends StatelessWidget {
  const FFButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.iconData,
    required this.options,
  });

  final String text;
  final Widget? icon;
  final IconData? iconData;
  final VoidCallback? onPressed;
  final FFButtonOptions options;

  @override
  Widget build(BuildContext context) {
    Widget textWidget = Text(
      text,
      style: options.textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );

    final onPressedFunc = onPressed;

    final buttonStyle = ButtonStyle(
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: options.borderRadius ?? BorderRadius.circular(8),
          side: options.borderSide ?? BorderSide.none,
        ),
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color?>(
        (states) => states.contains(WidgetState.disabled)
            ? Colors.grey
            : options.textStyle?.color,
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
        (states) => states.contains(WidgetState.disabled)
            ? Colors.black12
            : options.color,
      ),
      elevation: WidgetStateProperty.all<double>(options.elevation ?? 0),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(options.padding ?? EdgeInsets.zero),
    );

    if (icon != null || iconData != null) {
      return ElevatedButton.icon(
        icon: icon ?? Icon(iconData, size: options.iconSize),
        label: textWidget,
        onPressed: onPressedFunc,
        style: buttonStyle,
      );
    }

    return ElevatedButton(
      onPressed: onPressedFunc,
      style: buttonStyle,
      child: textWidget,
    );
  }
}

class FFButtonOptions {
  const FFButtonOptions({
    this.textStyle,
    this.elevation,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.disabledColor,
    this.disabledTextColor,
    this.borderRadius,
    this.borderSide,
    this.iconSize,
    this.iconPadding,
  });

  final TextStyle? textStyle;
  final double? elevation;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? disabledColor;
  final Color? disabledTextColor;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final double? iconSize;
  final EdgeInsetsGeometry? iconPadding;
}


