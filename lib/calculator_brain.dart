import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorBrain
{

  CalculatorBrain({this.height , this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI()
  {
    _bmi = weight/(pow(height/100 , 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    if (_bmi>25)
      {
        return "Overweight";
      }
    else if(_bmi>18.5)
      {
        return "Normal";
      }
    else
      {
        return "Underweight";
      }
  }

  String getDescription()
  {
    if (_bmi>25)
    {
      return "You have a higher than normal weight. Try to exercise more!";
    }
    else if(_bmi>18.5)
    {
      return "You have a normal body weight. Good Job!";
    }
    else
    {
      return "You have a lower than normal weight. You can eat more!";
    }
  }

  Color getColor()
  {
    if (_bmi>25)
    {
      return Colors.red;
    }
    else if(_bmi>18.5)
    {
      return Color(0xff24d876);
    }
    else
    {
      return Colors.deepOrange;
    }
  }
}

