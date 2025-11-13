# Dharatal Foundation Mobile App

**Official Mobile Application for Dharatal Foundation**  
**Website: https://dharatalfoundation.com/**

<div align="center">


![Appointment Booking] <img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/571e5645-cb90-485c-91d4-0b405b16d941" />



</div>

## Overview

This is the official mobile application for **Dharatal Foundation**, a healthcare organization dedicated to providing quality medical services to underserved communities. The app serves as a digital gateway to the foundation's healthcare programs, appointment booking system, and community outreach initiatives.

**Official Website: https://dharatalfoundation.com/**

## About Dharatal Foundation

Dharatal Foundation has been serving the community for 14 years with a mission to provide comprehensive and compassionate healthcare services to all sections of society, regardless of economic status.

### Our Mission
"Serving the underprivileged of society through excellence" - Providing quality medical care to all sections of society, regardless of their ability to pay.

### Our Vision
A world where quality healthcare is accessible to all, creating healthier and more prosperous communities.

## Founder & Leadership

**A.K Jain** - Founder & Director  
*Former Director P.F.C (Government of India)*

A.K Jain has dedicated his life to serving the community through healthcare initiatives. With years of experience and a compassionate heart, he leads the foundation in its mission to provide quality healthcare to all.

## Key Features

### Home Screen
- Foundation introduction and welcome message
- Overview of healthcare services and programs
- Quick access to all application features

### Appointment Booking System
- Professional healthcare consultation booking
- Comprehensive form with validation:
  - Full Name
  - Phone Number  
  - Email Address
  - Service Required (General Consultation)
  - Date Selection
  - Time Selection

### Healthcare Programs
- **Physiotherapy Centre** at River Park, Baghpat
- **Homeopathic Medicine Camp**
- **Eye Care Health Checkup** programs

### Contact Information
- Address: House No. 91, Ground Floor, Kiran Vihar, Karkardooma, Delhi - 110092
- Phone: +91 99108 32267
- Email: info@dharatalfoundation.com

## Technology Stack

- **Framework**: Flutter 3.7.2+
- **Language**: Dart 3.7.2+
- **Backend**: Firebase
- **Platform**: Android (Primary), iOS compatible

## Core Dependencies

```yaml
firebase_core: ^2.24.0
firebase_analytics: ^10.7.0
google_fonts: ^4.0.4
url_launcher: ^6.1.10
intl: ^0.18.1
```

## Project Structure

```
lib/
├── main.dart
├── models/
│   └── appointment.dart
├── screens/
│   ├── home_screen.dart
│   ├── about_screen.dart
│   ├── programs_screen.dart
│   ├── gallery_screen.dart
│   ├── book_appointment_screen.dart
│   └── contact_screen.dart
├── utils/
│   ├── colors.dart
│   ├── validators.dart
│   └── whatsapp_helper.dart
└── widgets/
    ├── bottom_nav_bar.dart
    ├── custom_app_bar.dart
    └── custom_button.dart
```

## Installation & Setup

### Prerequisites
- Flutter SDK 3.7.2 or higher
- Dart SDK 3.7.2 or higher
- Android Studio or VS Code with Flutter extension

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/Arrrzushi/Dharatal-foundation.git
   cd Dharatal-foundation
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**
   - Add `google-services.json` to `android/app/`
   - Set up Firebase project in console

4. **Run the application**
   ```bash
   flutter run
   ```

### Production Build

**Android APK:**
```bash
flutter build apk --release
```

**Android App Bundle:**
```bash
flutter build appbundle --release
```

## Appointment Booking Flow

1. User navigates to Book Appointment screen
2. Fills comprehensive form with personal details
3. Selects required service and preferred time slot
4. Submits appointment request
5. Receives confirmation via integrated communication channels

## Design System

### Color Scheme
- Primary: Healthcare blue tones
- Secondary: Complementary colors for accessibility
- Neutral: Clean backgrounds for medical context

### Typography
- Primary Font: Poppins (via Google Fonts)
- Clear hierarchy for medical information
- Accessible contrast ratios

### UI Components
- Custom form fields with validation
- Date and time pickers
- Service selection dropdowns
- Responsive layout design

## Integration Features

### WhatsApp Integration
- Direct appointment requests via WhatsApp
- Pre-filled message templates
- Quick communication with healthcare staff

### Contact Integration
- One-tap calling to foundation
- Email composition with pre-filled details
- Location mapping integration

## Production Status

**Current Status**: Production Ready

### Completed Features
- Home screen with foundation overview
- Appointment booking system
- Programs and services catalog
- Contact information integration
- Founder profile and foundation history
- Image gallery of activities
- Form validation and error handling

### Deployment
- Android APK generation
- Firebase Analytics integration
- Production-ready error handling
- Performance optimization

## Contact & Support

**Dharatal Foundation**  
House No. 91, Ground Floor, Kiran Vihar, Karkardooma, Delhi - 110092  
Phone: +91 99108 32267  
Email: info@dharatalfoundation.com  
Website: https://dharatalfoundation.com/

## License

This project is proprietary software developed for Dharatal Foundation. All rights reserved.

## Acknowledgments

- Dharatal Foundation healthcare team
- Community volunteers and partners
- Flutter and Dart development communities
- Firebase service providers

---

<div align="center">

**Dharatal Foundation Mobile Application**  
*Bridging healthcare gaps through technology*

**Official Website: https://dharatalfoundation.com/**

</div>
