import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

import '../apis/response_code.dart';
import '../apis/result.dart';
import '../utils/logger.dart';

Future<Result<RESPONSE>> safeApiCall<RESPONSE>(Future<RESPONSE> apiCall) async {
  try {
    return await apiCall.then((response) {
      debugPrint(response.toString());
      if (response is GeneratedMessage) {
        if (kDebugMode) {
          Map<String, dynamic> responseMap = {};
          response.info_.fieldInfo.forEach((key, value) {
            responseMap[value.name] = response.getField(key);
          });
          Logger.d("$response", tag: "API RESPONSE");
        }

        int? resultCodeTagNumber = response.getTagNumber("resultCode");

        if (resultCodeTagNumber != null) {
          int resultCode = response.getField(resultCodeTagNumber);
          Logger.d("$resultCode", tag: "API RESPONSE");

          if (resultCode != ResponseCode.success) {
            int? messageTagNumber = response.getTagNumber("message");
            String message = messageTagNumber != null
                ? response.getField(messageTagNumber)
                : "unknown";

            if (resultCode == ResponseCode.unauthorized) {
              // final context = GlobalVariable.currentContext;
              // if (context != null) {
              //   Navigator.pushNamedAndRemoveUntil(context, SignInPage.routeName, (route) => false);
              // }
            }

            return Error(resultCode, message);
          }
        }
      }
      return Success(response);
    });
  } on GrpcError catch (e) {
    debugPrint(e.toString());
    Logger.d("$e", tag: "Grpc Api EXCEPTION");
    if (e.code == ResponseCode.unauthorized) {
      // if (context != null) {
      //   Navigator.pushNamedAndRemoveUntil(context, SignInPage.routeName, (route) => false);
      // }
    }
    return Future(() => Error(e.code, e.message ?? "unknown"));
  } catch (e) {
    Logger.d("$e", tag: "API EXCEPTION");
    return Future(() => Error(StatusCode.unknown, "unknown"));
  }
}
