//
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use grpcLoginRequestDescriptor instead')
const GrpcLoginRequest$json = {
  '1': 'GrpcLoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `GrpcLoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcLoginRequestDescriptor = $convert.base64Decode(
    'ChBHcnBjTG9naW5SZXF1ZXN0EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIaCghwYXNzd2'
    '9yZBgCIAEoCVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use grpcLoginRequestReplyDescriptor instead')
const GrpcLoginRequestReply$json = {
  '1': 'GrpcLoginRequestReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `GrpcLoginRequestReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcLoginRequestReplyDescriptor = $convert.base64Decode(
    'ChVHcnBjTG9naW5SZXF1ZXN0UmVwbHkSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgV0b2'
    'tlbhgCIAEoCVIFdG9rZW4=');

