import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class WhatsAppHelper {
  static const String phoneNumber = '919910832267';
  
  static Future<bool> sendAppointment({
    required String name,
    required String phone,
    required String email,
    required String date,
    required String time,
    required String service,
    String? notes,
  }) async {
    final message = _formatMessage(
      name: name,
      phone: phone,
      email: email,
      date: date,
      time: time,
      service: service,
      notes: notes,
    );
    
    final encodedMessage = Uri.encodeComponent(message);
    final whatsappUrl = 'https://wa.me/$phoneNumber?text=$encodedMessage';
    
    try {
      final uri = Uri.parse(whatsappUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      debugPrint('Error launching WhatsApp: $e');
      return false;
    }
  }
  
  static String _formatMessage({
    required String name,
    required String phone,
    required String email,
    required String date,
    required String time,
    required String service,
    String? notes,
  }) {
    final buffer = StringBuffer();
    buffer.writeln('*New Appointment Request*');
    buffer.writeln('');
    buffer.writeln('Name: $name');
    buffer.writeln('Phone: $phone');
    buffer.writeln('Email: $email');
    buffer.writeln('Date: $date');
    buffer.writeln('Time: $time');
    buffer.writeln('Service: $service');
    if (notes != null && notes.isNotEmpty) {
      buffer.writeln('Notes: $notes');
    }
    buffer.writeln('');
    buffer.writeln('Please confirm this appointment.');
    
    return buffer.toString();
  }
}
