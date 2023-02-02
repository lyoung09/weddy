enum ProfileDisplayType {
  signup, update, readOnly
}

extension ProfileDisplayTypeX on ProfileDisplayType {
  bool get isSignup => this == ProfileDisplayType.signup;
  bool get isUpdate => this == ProfileDisplayType.update;
  bool get isReadOnly => this == ProfileDisplayType.readOnly;
}