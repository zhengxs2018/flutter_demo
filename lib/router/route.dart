import 'package:flutter/material.dart';
import 'package:path_to_regexp/path_to_regexp.dart';

class DynamicRoute {
  final String path;
  final List<String> parameters;
  final WidgetBuilder builder;

  final RegExp pattern;
  final PathFunction toPath;

  DynamicRoute(
      this.path, this.parameters, this.pattern, this.builder, this.toPath);

  bool match(String path) {
    return pattern.hasMatch(path);
  }

  static create(String path, WidgetBuilder builder) {
    var parameters = <String>[];
    var tokens = parse(path, parameters: parameters);
    var pattern = tokensToRegExp(tokens);
    var toPath = tokensToFunction(tokens);

    return DynamicRoute(path, parameters, pattern, builder, toPath);
  }
}
