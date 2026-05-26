import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_radius.dart';
import '../../app/theme/app_spacing.dart';
import '../../app/theme/app_typography.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final String? helperText;
  final bool isObscure;
  final TextInputType? keyboardType;
  final bool isMultiline;
  final bool isSearch;
  final bool isTimeInput;
  final bool readOnly;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;

  const AppTextField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.errorText,
    this.helperText,
    this.isObscure = false,
    this.keyboardType,
    this.isMultiline = false,
    this.isSearch = false,
    this.isTimeInput = false,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final borderDecoration = OutlineInputBorder(
      borderRadius: AppRadius.input,
      borderSide: const BorderSide(color: Colors.transparent),
    );

    final focusedBorderDecoration = OutlineInputBorder(
      borderRadius: AppRadius.input,
      borderSide: const BorderSide(color: AppColors.roseClay, width: 1.5),
    );

    final errorBorderDecoration = OutlineInputBorder(
      borderRadius: AppRadius.input,
      borderSide: BorderSide(color: Colors.red.shade300, width: 1.5),
    );

    Widget? prefix;
    if (isSearch) {
      prefix = Icon(
        LucideIcons.search,
        color: AppColors.cocoaInk.withValues(alpha: 0.5),
        size: 20,
      );
    }

    Widget? suffix;
    if (isTimeInput) {
      suffix = Icon(
        LucideIcons.clock,
        color: AppColors.cocoaInk.withValues(alpha: 0.5),
        size: 20,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null) ...[
          Text(
            labelText!,
            style: AppTypography.tinyLabel.copyWith(
              color: AppColors.cocoaInk.withValues(alpha: 0.6),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSpacing.s8),
        ],
        TextFormField(
          controller: controller,
          obscureText: isObscure,
          keyboardType: isMultiline ? TextInputType.multiline : keyboardType,
          maxLines: isMultiline ? null : 1,
          minLines: isMultiline ? 3 : 1,
          readOnly: readOnly || isTimeInput,
          onTap: onTap,
          onChanged: onChanged,
          validator: validator,
          style: AppTypography.body.copyWith(color: AppColors.cocoaInk),
          cursorColor: AppColors.roseClay,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTypography.body.copyWith(
              color: AppColors.cocoaInk.withValues(alpha: 0.4),
            ),
            filled: true,
            fillColor: AppColors.butterCream,
            contentPadding: const EdgeInsets.all(AppSpacing.s16),
            border: borderDecoration,
            enabledBorder: borderDecoration,
            focusedBorder: focusedBorderDecoration,
            errorBorder: errorBorderDecoration,
            focusedErrorBorder: errorBorderDecoration,
            prefixIcon: prefix,
            suffixIcon: suffix,
            errorStyle: const TextStyle(height: 0, fontSize: 0), // Hide standard error under input
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(height: AppSpacing.s4),
          Text(
            errorText!,
            style: AppTypography.caption.copyWith(color: Colors.red.shade300),
          ),
        ] else if (helperText != null) ...[
          const SizedBox(height: AppSpacing.s4),
          Text(
            helperText!,
            style: AppTypography.caption.copyWith(
              color: AppColors.cocoaInk.withValues(alpha: 0.5),
            ),
          ),
        ],
      ],
    );
  }
}
