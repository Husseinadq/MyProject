import 'package:flutter/material.dart';
import 'package:test01/presentation/font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight);
}

//regular style
TextStyle getRegularStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

//medium style
TextStyle getMediumStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

//light style
TextStyle getLightStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

//semibold style
TextStyle getSemiboldStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.semibold, color);
}


//bold style
TextStyle getBoldStyle({double fontSize=FontSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
