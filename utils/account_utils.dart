class AccountUtils {
  bool availableUserId(String id) {
    if (id.trim().isEmpty) return false;

    final regExp = RegExp(r'^[a-zA-Z0-9]{4,15}$');

    return regExp.hasMatch(id);
  }

  bool availableUserPassword(String password) {
    if (password.trim().isEmpty) return false;

    final regExp = RegExp(r'^(?=.*[a-z])(?=.*\d)'
        r'^(?=.*[A-Z])'
        r'(?=.*[$@$!%*#?~^<>,.&+=])'
        r'[A-Za-z\d$@$!%*#?~^<>,.&+=]{8,15}$');

    return regExp.hasMatch(password);
  }
}
