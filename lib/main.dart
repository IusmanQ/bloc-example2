import 'package:flutter/material.dart';
import 'package:flutter_app_bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc.dart';
void main() async {
  final bloc = CounterBloc();
  final subscription = bloc.stream.listen((value) => print(value));
  bloc.add(IncrementEventPressed());
  bloc.add(IncrementEventPressed());
  await Future.delayed(Duration.zero);
  subscription.cancel();
  bloc.close();
}