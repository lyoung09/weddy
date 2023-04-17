class UserProfile {
  final String? name;
  final DateTime? ceremonyDate;
  final int? relationShipCode;
  final int? divisionCode;
  final int weddingBudget;
  final String? userId;
  // final int numberOfGuest;
  final String? userEmail;
  final String? phoneNumber;
  final bool hasPush;
  final bool hasMarketingPush;

// message SignupRequest {
//   string userId = 1;
//   string userName = 2;
//   string password = 3;
//   string phoneNumber = 4;
//   int32 relationshipCode = 6;
//   string userPlatform = 7;
//   string userEmail = 8;
//   //ex ) 20220804
//   string ceremonyDate = 9;
//   int64 weddingBudget = 10;
//   int64 weddingAdminDivisionCode = 11;
// }

  const UserProfile(
      {this.name,
      this.ceremonyDate,
      this.relationShipCode,
      this.userEmail,
      this.phoneNumber,
      this.divisionCode,
      this.userId,
      this.weddingBudget = 0,
      this.hasPush = false,
      this.hasMarketingPush = false});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'userId': userId,
      'ceremonyDate': ceremonyDate?.toIso8601String(),
      'relationShipCode': relationShipCode,
      'divisionCode': divisionCode,
      'weddingBudget': weddingBudget,
      'userEmail': userEmail,
      'phoneNumber': phoneNumber,
      //'numberOfGuest': numberOfGuest,
      'hasPush': hasPush ? 1 : 0,
      'hasMarketingPush': hasMarketingPush ? 1 : 0
    };
  }

  UserProfile copyWith(
      {final String? name,
      final DateTime? ceremonyDate,
      final int? relationShipCode,
      final int? divisionCode,
      final int? weddingBudget,
      final String? phoneNumber,
      final String? userEmail,
      final String? userId,
      //final int? numberOfGuest,
      final bool? hasPush,
      final bool? hasMarketingPush}) {
    return UserProfile(
        name: name ?? this.name,
        ceremonyDate: ceremonyDate ?? this.ceremonyDate,
        relationShipCode: relationShipCode ?? this.relationShipCode,
        divisionCode: divisionCode ?? this.divisionCode,
        userEmail: userEmail ?? this.userEmail,
        userId: userId ?? this.userId,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        weddingBudget: weddingBudget ?? this.weddingBudget,
        hasPush: hasPush ?? this.hasPush,
        hasMarketingPush: hasMarketingPush ?? this.hasMarketingPush);
  }

  static const empty = UserProfile(name: "");
}
