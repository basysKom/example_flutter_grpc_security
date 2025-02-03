//
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GrpcLoginRequest extends $pb.GeneratedMessage {
  factory GrpcLoginRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  GrpcLoginRequest._() : super();
  factory GrpcLoginRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GrpcLoginRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GrpcLoginRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'example_flutter_grpc_security'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GrpcLoginRequest clone() => GrpcLoginRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GrpcLoginRequest copyWith(void Function(GrpcLoginRequest) updates) =>
      super.copyWith((message) => updates(message as GrpcLoginRequest))
          as GrpcLoginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcLoginRequest create() => GrpcLoginRequest._();
  GrpcLoginRequest createEmptyInstance() => create();
  static $pb.PbList<GrpcLoginRequest> createRepeated() =>
      $pb.PbList<GrpcLoginRequest>();
  @$core.pragma('dart2js:noInline')
  static GrpcLoginRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GrpcLoginRequest>(create);
  static GrpcLoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class GrpcLoginRequestReply extends $pb.GeneratedMessage {
  factory GrpcLoginRequestReply({
    $core.bool? success,
    $core.String? token,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  GrpcLoginRequestReply._() : super();
  factory GrpcLoginRequestReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GrpcLoginRequestReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GrpcLoginRequestReply',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'example_flutter_grpc_security'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GrpcLoginRequestReply clone() =>
      GrpcLoginRequestReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GrpcLoginRequestReply copyWith(
          void Function(GrpcLoginRequestReply) updates) =>
      super.copyWith((message) => updates(message as GrpcLoginRequestReply))
          as GrpcLoginRequestReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcLoginRequestReply create() => GrpcLoginRequestReply._();
  GrpcLoginRequestReply createEmptyInstance() => create();
  static $pb.PbList<GrpcLoginRequestReply> createRepeated() =>
      $pb.PbList<GrpcLoginRequestReply>();
  @$core.pragma('dart2js:noInline')
  static GrpcLoginRequestReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GrpcLoginRequestReply>(create);
  static GrpcLoginRequestReply? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
