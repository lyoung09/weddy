class OptionalInfo {
  OptionalInfo(this.deliveryInfo, this.ceremonyInfo, this.vendorToUserInfo, this.userToVendorInfo);

  final DeliveryInfo? deliveryInfo;
  final CeremonyInfo? ceremonyInfo;
  final VendorToUserInfo vendorToUserInfo;
  final UserToVendorInfo userToVendorInfo;
}

class DeliveryInfo {}
class CeremonyInfo {}
class VendorToUserInfo {}
class UserToVendorInfo {}