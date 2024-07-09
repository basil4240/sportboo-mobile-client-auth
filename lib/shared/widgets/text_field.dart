import 'package:flutter/material.dart';

import '../../core/theme/colors.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    this.label = '',
    this.floatingLabel,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixWidget,
    this.prefixWidget,
    this.prefixIconColor,
    this.suffixIconColor,
    this.validator,
    this.controller,
    this.alignLabelWithHint = false,
    this.onPasswordToggle,
    this.onTapped,
    this.keyboardType,
    this.maxLength,
    this.labelStyle,
    this.onChange,
    this.radius,
    this.readOnly = false,
    this.autoFocus = false,
    this.horizontalPadding,
    this.verticalPadding,
    this.textInputAction = TextInputAction.next,
    this.obscurePassword = false,
    this.errorMessage,
    this.focusNode,
  }) : super(key: key);

  final String? label;
  final String? initialValue;
  final String? floatingLabel;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final TextStyle? labelStyle;

  final bool? readOnly;
  final bool autoFocus;
  final double? radius;

  final FocusNode? focusNode;

  final Function(String)? onChange;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onPasswordToggle;

  final TextEditingController? controller;

  final bool? alignLabelWithHint;
  final bool obscurePassword;
  final Function()? onTapped;
  final String? errorMessage;

  final TextInputType? keyboardType;
  final int? maxLength;

  final TextInputAction? textInputAction;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late FocusNode textfieldfocusNode = FocusNode();

  Color _borderColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    if (widget.focusNode != null) {
      textfieldfocusNode = widget.focusNode!;
    }

    // Change color for border if focus was changed
    textfieldfocusNode.addListener(() {
      setState(() {
        _borderColor = textfieldfocusNode.hasFocus
            ? AppColors.primaryBase6
            : AppColors.tertiary5;
      });
    });
  }

  @override
  void dispose() {
    textfieldfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.tertiary1,
        borderRadius: BorderRadius.circular(
          widget.radius ?? 16,
        ),
        border: Border.all(color: _borderColor, width: 1.3),
        boxShadow: textfieldfocusNode.hasFocus
            ? [
          BoxShadow(
            color: AppColors.primaryBase6.withOpacity(0.25),
            spreadRadius: 3,
            blurRadius: 1,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ]
            : null,
      ),
      child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(widget.radius ?? 16),
              child: TextFormField(
                focusNode: textfieldfocusNode,
                onTap: widget.onTapped,
                keyboardType: widget.keyboardType,
                initialValue: widget.initialValue,
                readOnly: widget.readOnly!,
                obscureText: widget.obscurePassword,
                obscuringCharacter: '*',
                cursorColor: AppColors.tertiaryBase10,
                cursorHeight: 21,
                textInputAction: widget.textInputAction,
                autofocus: widget.autoFocus,
                onChanged: widget.onChange,
                style: const TextStyle(
                    color: AppColors.tertiaryBase10,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'inter'),
                maxLength: widget.maxLength,
                validator: widget.validator,
                controller: widget.controller,
                decoration: InputDecoration(
                  // filled: true,

                  labelText: widget.label,
                  labelStyle: widget.labelStyle ??
                      const TextStyle(
                          color: AppColors.tertiary6,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'inter'),
                  border: InputBorder.none,
                  errorStyle: const TextStyle(
                      color: AppColors.dangerBase3,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'inter'),
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: 12,
                    minWidth: 12,
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minHeight: 12,
                    minWidth: 12,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: widget.horizontalPadding ?? 16,
                    vertical: widget.verticalPadding ?? 12,
                  ),
                  prefixIcon: widget.prefixWidget ??
                      (widget.prefixIcon != null
                          ? IconButton(
                          onPressed: widget.onPasswordToggle,
                          icon: Icon(
                            widget.prefixIcon,
                            color: widget.prefixIconColor,
                          ))
                          : null),
                  suffixIcon: widget.suffixWidget ??
                      (widget.suffixIcon != null
                          ? IconButton(
                        onPressed: widget.onPasswordToggle,
                        icon: Icon(
                          widget.suffixIcon,
                          color: widget.suffixIconColor,
                        ),
                      )
                          : null),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this. fillColor,
    this.label = '',
    this.floatingLabel,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixWidget,
    this.prefixWidget,
    this.prefixIconColor,
    this.suffixIconColor,
    this.validator,
    this.controller,
    this.alignLabelWithHint = false,
    this.onPasswordToggle,
    this.onTapped,
    this.keyboardType,
    this.maxLength,
    this.onChange,
    this.readOnly = false,
    this.horizontalPadding,
    this.textInputAction = TextInputAction.next,
    this.obscurePassword = false,
    this.borderColor,
    this.floatingLabelBehavior,
    this.labelStyle,
    this.radius,
    this.verticalPadding,
    this.style,
    this.minLines, this.maxLines,
  }) : super(key: key);

  final Color? fillColor;
  final String? label;
  final String? initialValue;
  final String? floatingLabel;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final Color? borderColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextStyle? labelStyle;
  final TextStyle? style;

  final bool? readOnly;

  final Function(String)? onChange;
  final FormFieldValidator<String>? validator;
  final VoidCallback? onPasswordToggle;

  final TextEditingController? controller;

  final bool? alignLabelWithHint;
  final bool obscurePassword;
  final Function()? onTapped;

  final TextInputType? keyboardType;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final double? radius;

  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37,
      child: TextFormField(
        onTap: onTapped,
        keyboardType: keyboardType,
        initialValue: initialValue,
        readOnly: readOnly!,
        obscureText: obscurePassword,
        cursorColor: AppColors.tertiaryBase10,
        cursorHeight: 16,
        textInputAction: textInputAction,
        minLines: minLines,
        maxLines: maxLines,
        onChanged: onChange,
        style: style ??
            const TextStyle(
              color: AppColors.tertiaryBase10,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'inter',
            ),
        maxLength: maxLength,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          fillColor: fillColor ?? AppColors.tertiary1,
          filled: true,
          labelText: label,
          labelStyle: labelStyle ??
              const TextStyle(
                color: AppColors.tertiary6,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'inter',
              ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 16),
            borderSide: const BorderSide(
              color: AppColors.primaryBase6,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 16),
            borderSide: BorderSide(
              color: borderColor ?? fillColor ?? AppColors.tertiary5,
              width: 1.3,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 16),
            borderSide: const BorderSide(
              color: AppColors.dangerBase3,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 16),
            borderSide: const BorderSide(
              color: AppColors.dangerBase3,
            ),
          ),
          errorStyle: const TextStyle(color: Colors.red, fontFamily: 'inter'),
          suffixIconConstraints: const BoxConstraints(
            minHeight: 12,
            minWidth: 12,
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 12,
            minWidth: 12,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 16,
            vertical: verticalPadding ?? 22,
          ),
          prefixIcon: prefixWidget ??
              (prefixIcon != null
                  ? IconButton(
                  onPressed: onPasswordToggle,
                  icon: Icon(
                    prefixIcon,
                    color: prefixIconColor,
                  ))
                  : null),
          suffixIcon: suffixWidget ??
              (suffixIcon != null
                  ? IconButton(
                onPressed: onPasswordToggle,
                icon: Icon(
                  suffixIcon,
                  color: suffixIconColor,
                ),
              )
                  : null),
        ),
      ),
    );
  }
}
