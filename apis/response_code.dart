class ResponseCode {
  static const success               = 1000;

  static const notFound              = -1;
  static const invalidUserId         = 1001;
  static const invalidPasswordFormat = 1002;
  static const invalidPhoneNumber    = 1003;
  static const invalidAccountStatus  = 1004;
  static const notCertificated       = 1005;
  static const duplicatedUserId      = 1006;
  static const invalidInputData      = 1007;
  static const withdrawAccount       = 1008;
  static const passwordMismatched    = 1009;
  static const invalidPushToken      = 1010;
  static const existsPhoneNumber     = 1011;
  static const expiresAuthToken      = 1012;
  static const existsChecklist       = 1013;
  static const exceedMaxBookmark     = 1014;
  static const invalidInputDate      = 1015;
  static const alreadyExistsData     = 1016;
  static const exceedMaxMemo         = 1017;
  static const unauthorized          = 1018;
  static const thereIsNoData         = 2002;
  static const serverInternalError   = 9999;
}