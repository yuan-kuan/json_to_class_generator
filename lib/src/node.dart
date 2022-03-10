// Copyright (c) 2017, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'node.g.dart';

@JsonSerializable()
class ClassNode {
  /// The generated code assumes these values exist in JSON.
  final String name;

  ClassNode({required this.name});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory ClassNode.fromJson(Map<String, dynamic> json) => _$ClassNodeFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ClassNodeToJson(this);
}
