import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  ClientChannel? client;
  static final GrpcClientSingleton _singleton = GrpcClientSingleton.internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton.internal() {
    client = ClientChannel(
      "192.168.50.170", // Your IP here, localhost might not work.
      port: 6000,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }
}
