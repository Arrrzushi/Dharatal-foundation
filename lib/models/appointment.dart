class Appointment {
  final String name;
  final String phone;
  final String email;
  final DateTime date;
  final String time;
  final String service;
  final String? notes;

  Appointment({
    required this.name,
    required this.phone,
    required this.email,
    required this.date,
    required this.time,
    required this.service,
    this.notes,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone': phone,
      'email': email,
      'date': date.toIso8601String(),
      'time': time,
      'service': service,
      'notes': notes,
    };
  }

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      date: DateTime.parse(json['date']),
      time: json['time'],
      service: json['service'],
      notes: json['notes'],
    );
  }
}
