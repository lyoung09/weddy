class UserProfile {
  final String? name;
  final DateTime? ceremonyDate;
  final int? relationShipCode;
  final int? divisionCode;
  final int weddingBudget;
  final int numberOfGuest;
  final bool hasPush;
  final bool hasMarketingPush;

  const UserProfile({
    this.name,
    this.ceremonyDate,
    this.relationShipCode,
    this.divisionCode,
    this.weddingBudget = 0,
    this.numberOfGuest = 0,
    this.hasPush = false,
    this.hasMarketingPush = false
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ceremonyDate': ceremonyDate?.toIso8601String(),
      'relationShipCode': relationShipCode,
      'divisionCode': divisionCode,
      'weddingBudget': weddingBudget,
      'numberOfGuest': numberOfGuest,
      'hasPush': hasPush ? 1 : 0,
      'hasMarketingPush': hasMarketingPush ? 1 : 0
    };
  }

  UserProfile copyWith({
    final String? name,
    final DateTime? ceremonyDate,
    final int? relationShipCode,
    final int? divisionCode,
    final int? weddingBudget,
    final int? numberOfGuest,
    final bool? hasPush,
    final bool? hasMarketingPush
  }) {

    return UserProfile(
      name: name ?? this.name,
      ceremonyDate: ceremonyDate ?? this.ceremonyDate,
      relationShipCode: relationShipCode ?? this.relationShipCode,
      divisionCode: divisionCode ?? this.divisionCode,
      weddingBudget: weddingBudget ?? this.weddingBudget,
      numberOfGuest: numberOfGuest ?? this.numberOfGuest,
      hasPush: hasPush ?? this.hasPush,
      hasMarketingPush: hasMarketingPush ?? this.hasMarketingPush
    );
  }

  static const empty = UserProfile(name: "");
}
