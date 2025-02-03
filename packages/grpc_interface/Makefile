gen_protoc:
	# See https://grpc.io/docs/languages/dart/quickstart/
	# Run first: dart pub global activate protoc_plugin
	# install protoc
	# - linux: sudo apt install protobuf-compiler
	# - macos: brew install protobuf
	mkdir -p lib/generated
	protoc --dart_out=grpc:lib/generated -Iproto proto/machine.proto
	protoc --dart_out=grpc:lib/generated -Iproto proto/authentication.proto
