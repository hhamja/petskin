import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petskin/src/config/constant/app_color.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final controller;

  const CustomTextFormField({
    this.labelText,
    this.hintText,
    this.controller,
    super.key,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.blue,
      style: Theme.of(context).textTheme.titleMedium,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.center,
        hintText: widget.hintText,
        fillColor: WHITE_COLOR,
        hintStyle: TextStyle(
          fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
          color: GREY_COLOR,
        ),
        labelText: widget.labelText,
        labelStyle: Theme.of(context).textTheme.titleSmall,
        counterText: '',
        border: InputBorder.none,
      ),
      autocorrect: false,
      textInputAction: TextInputAction.done,
      maxLines: 1,
      showCursor: true,
      controller: widget.controller,
      // 닉네임 최대글자 12자
      maxLength: 12,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.center,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      onChanged: (value) {
        setState(() {});
      },
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(r'[a-z|A-Z|0-9|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]'),
        ),
      ],
    );
  }
}
