import 'package:grpc/grpc.dart';

import '../../utils/logger.dart';
import '../di/di_module.dart';
import '../preferences.dart';


class AuthorizationInterceptor extends ApiInterceptor {

  @override
  Map<String, String>? get metadata {
    final PreferencesCustom preference = getIt.get();
    final token = preference.accessToken;
    final Map<String, String> metadata = {};

    if (token.isNotEmpty) {
      metadata["authorization"] = token;
    } else {
      metadata["authorization"] = "";
    }

    return metadata;
  }
}

class ApiInterceptor extends ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {

    final mergedOptions = options.mergedWith(
        CallOptions(
            metadata: metadata,
            timeout: const Duration(seconds: 10)
        )
    );

    Logger.d("${method.path}\nheader : $metadata\n$request", tag: "API REQUEST");

    return super.interceptUnary(method, request, mergedOptions, invoker);
  }

  Map<String, String>? get metadata => null;
}