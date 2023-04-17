class AccountUtils {
  bool availableUserId(String id) {
    if (id.trim().isEmpty) return false;

    RegExp regExp = RegExp(r"^[A-Za-z]+\d+.*$");

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
