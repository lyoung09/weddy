import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';

class NetworkModule {
  void provide(GetIt getIt) {
    getIt.registerFactory<ClientChannel>(() => ClientChannel(
          "192.168.50.170",
          port: 6000,
          options:
              const ChannelOptions(credentials: ChannelCredentials.insecure()),
        ));

    getIt.registerFactory<CallOptions>(() {
      return CallOptions(timeout: const Duration(seconds: 10));
    });
  }
}
