import 'package:weddynew/apis/auth/app_auth.pbgrpc.dart';
import 'package:weddynew/apis/biz/app_biz.pbgrpc.dart';
import 'package:weddynew/apis/result.dart';
import 'package:weddynew/repository/safe_api.dart';

class MemoApiService {
  const MemoApiService(this.client);

  final AppBizServiceClient client;
  Future<Result<List<Memo>>> getMemoList() async {
    return safeApiCall(client.getMemoList(PaginationRequest()))
        .map((result) => result.memoList);
  }
}
