import 'package:weddynew/apis/biz/app_biz.pb.dart';

import 'response_code.dart';

abstract class Result<DATA> {
  Result(this.resultCode);
  final int resultCode;
}

class Success<DATA> extends Result<DATA> {
  Success(this.result, {int resultCode = ResponseCode.success})
      : super(resultCode);
  final DATA result;
}

class Error<DATA> extends Result<DATA> {
  Error(int errorCode, this.message) : super(errorCode);

  final String message;
}

extension ResultX<DATA> on Result<DATA> {
  bool get isSuccess => this is Success;
  bool get isError => this is Error;

  Result<DATA> success(void Function(DATA data) callback) {
    if (isSuccess) {
      callback.call((this as Success).result);
    }

    return this;
  }

  Result error(void Function(int errorCode, String message) callback) {
    if (isError) {
      callback.call(resultCode, (this as Error).message);
    }

    return this;
  }

  Result map<MAP>(MAP Function(DATA result) callback) {
    if (isSuccess) {
      return Success(callback.call((this as Success<DATA>).result));
    } else {
      return Error(resultCode, (this as Error).message);
    }
  }
}

extension FutureX<DATA> on Future<Result<DATA>> {
  Future<Result<MAP>> map<MAP>(MAP Function(DATA result) callback) {
    return then((value) {
      if (value.isSuccess) {
        return Success<MAP>(callback.call((value as Success<DATA>).result));
      } else {
        return Error(value.resultCode, (value as Error).message);
      }
    });
  }
}
