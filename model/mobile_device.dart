class MobileDevice {
  String uuid;
  int userUUID = 0;
  bool isAndroid;
  bool isIos;

  MobileDevice(
      {required this.uuid, required this.isAndroid, required this.isIos});
}
