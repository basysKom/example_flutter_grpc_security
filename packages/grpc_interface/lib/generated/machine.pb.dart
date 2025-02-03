//
//  Generated code. Do not modify.
//  source: machine.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GrpcStartMachineRequest extends $pb.GeneratedMessage {
  factory GrpcStartMachineRequest() => create();
  GrpcStartMachineRequest._() : super();
  factory GrpcStartMachineRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GrpcStartMachineRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GrpcStartMachineRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'example_flutter_grpc_security'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GrpcStartMachineRequest clone() =>
      GrpcStartMachineRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GrpcStartMachineRequest copyWith(
          void Function(GrpcStartMachineRequest) updates) =>
      super.copyWith((message) => updates(message as GrpcStartMachineRequest))
          as GrpcStartMachineRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcStartMachineRequest create() => GrpcStartMachineRequest._();
  GrpcStartMachineRequest createEmptyInstance() => create();
  static $pb.PbList<GrpcStartMachineRequest> createRepeated() =>
      $pb.PbList<GrpcStartMachineRequest>();
  @$core.pragma('dart2js:noInline')
  static GrpcStartMachineRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GrpcStartMachineRequest>(create);
  static GrpcStartMachineRequest? _defaultInstance;
}

class GrpcStartMachineReply extends $pb.GeneratedMessage {
  factory GrpcStartMachineReply({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  GrpcStartMachineReply._() : super();
  factory GrpcStartMachineReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GrpcStartMachineReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GrpcStartMachineReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'example_flutter_grpc_security'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GrpcStartMachineReply clone() =>
      GrpcStartMachineReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GrpcStartMachineReply copyWith(
          void Function(GrpcStartMachineReply) updates) =>
      super.copyWith((message) => updates(message as GrpcStartMachineReply))
          as GrpcStartMachineReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcStartMachineReply create() => GrpcStartMachineReply._();
  GrpcStartMachineReply createEmptyInstance() => create();
  static $pb.PbList<GrpcStartMachineReply> createRepeated() =>
      $pb.PbList<GrpcStartMachineReply>();
  @$core.pragma('dart2js:noInline')
  static GrpcStartMachineReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GrpcStartMachineReply>(create);
  static GrpcStartMachineReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
