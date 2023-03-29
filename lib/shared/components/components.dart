import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double wight = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double border = 0.0,
  required String text,
  required Function function,
}) =>
    Container(
      height: 50.0,
      width: wight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(border), color: background),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
          onPressed: () {
            function();
          },
          child: Text(
            isUpperCase ? text.toUpperCase() : text,
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          )),
    );


Widget defaultTextFormFiled({
  required TextEditingController control,
  required TextInputType type,
  required Function validator,
  required String text,
  required Icon prefix,
  Icon? suffix,
  bool isSecureIcon = false,
  Function? onSubmit,
  Function? onChange,

}) =>
    TextFormField(
      controller: control,
      keyboardType: TextInputType.emailAddress,
      // onFieldSubmitted: onSubmit!(),
      // onChanged: onChange!(),
      obscureText: isSecureIcon,
      validator: validator(),
      decoration:  InputDecoration(
          labelText:text,
          prefixIcon: prefix,
          suffixIcon:suffix != null ?suffix:null,
          border: OutlineInputBorder())

    );


