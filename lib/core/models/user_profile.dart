enum AccountStatus { pendingActivation, active, frozen }

class UserProfile {
  const UserProfile({
    required this.name,
    required this.school,
    required this.grade,
    required this.academy,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      name: (json['name'] as String?) ?? '',
      school: (json['school'] as String?) ?? '',
      grade: (json['grade'] as String?) ?? '',
      academy: (json['academy'] as String?) ?? '',
    );
  }

  final String name;
  final String school;
  final String grade;
  final String academy;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'school': school,
      'grade': grade,
      'academy': academy,
    };
  }
}
