enum AccountStatus {
  pendingActivation,
  active,
  frozen,
}

class UserProfile {
  const UserProfile({
    required this.name,
    required this.school,
    required this.grade,
    required this.academy,
  });

  final String name;
  final String school;
  final String grade;
  final String academy;
}
