# 🏥 Dharatal Foundation Mobile App

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.7.2+-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.7.2+-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)
![Status](https://img.shields.io/badge/Status-Production%20Ready-success?style=for-the-badge)
![Play Store](https://img.shields.io/badge/Play%20Store-Coming%20Soon-orange?style=for-the-badge)

**A modern, production-ready Flutter mobile application for Dharatal Foundation - serving the underprivileged through excellence in healthcare.**

[🌐 Website](https://dharatalfoundation.com/) • [📧 Email](mailto:info@dharatalfoundation.com) • [📱 Phone](tel:+919910832267)

</div>

---

## 📖 About

Dharatal Foundation is a healthcare organization established 14 years ago, committed to providing comprehensive and compassionate healthcare services to underserved communities. This mobile application brings the foundation's services directly to users' fingertips, enabling easy access to healthcare programs, appointment booking, and information about the foundation's initiatives.

### 🎯 Mission

*"Serving the underprivileged of society through excellence"* - We provide quality medical care to all sections of society, regardless of their ability to pay.

### 🌟 Vision

To become a beacon of hope and healing for communities in need, ensuring access to high-quality healthcare services for all.

---

## ✨ Features

### 🏠 Home Screen
- **Hero Section** with foundation introduction
- **Statistics Dashboard** showcasing years of service, programs, and patients served
- **Program Overview** with quick access to all healthcare services
- **Call-to-Action** sections for engagement

### 📋 Programs
- **Physiotherapy Centre** (River Park, Baghpat)
  - Mobility assessments
  - Posture correction
  - Pain management
  - Rehabilitation therapy
  - Exercise prescription

- **Homeopathic Medicine Camp**
  - Personalized consultations
  - Natural remedies
  - Health education
  - Preventive care
  - Community awareness

- **Eye Care Health Checkup**
  - Vision testing
  - Eye health screening
  - Preventive education
  - Early detection
  - Treatment referrals

### 📸 Gallery
- Interactive image gallery showcasing foundation activities
- Full-screen image viewer with zoom capabilities
- Event highlights and community impact photos

### 📅 Appointment Booking
- **Comprehensive Booking Form** with validation
- **Date & Time Selection** with intuitive pickers
- **Service Selection** dropdown
- **WhatsApp Integration** for instant appointment requests
- **Form Validation** ensuring data accuracy

### 📞 Contact & Support
- **Direct Contact Information**
  - Address: House No. 91, Ground Floor, Kiran Vihar, Karkardooma, Delhi - 110092
  - Phone: +91-9910832267
  - Email: info@dharatalfoundation.com
- **Quick Actions**: Call, Email, Book Appointment
- **Location Integration** with maps
- **Social Media Links**

### 👥 About Us
- Foundation history and mission
- Founder profile (A.K Jain - Former Director P.F.C, Govt. of India)
- Vision, Mission, and Values
- Timeline of achievements

---

## 🛠️ Technology Stack

### Core Framework
- **Flutter** 3.7.2+ - Cross-platform mobile development
- **Dart** 3.7.2+ - Programming language

### Key Dependencies
- **Firebase Core** - Backend infrastructure
- **Firebase Analytics** - User analytics and insights
- **Google Fonts** - Beautiful typography (Poppins)
- **URL Launcher** - Deep linking and external app integration
- **Intl** - Internationalization and date formatting

### Design System
- **Material Design 3** - Modern UI components
- **Custom Color Palette** - Brand-consistent colors
- **Responsive Layout** - Adaptive to different screen sizes
- **Gradient Backgrounds** - Visually appealing UI elements

---

## 📱 Screenshots

<div align="center">

| Home Screen | Programs | Gallery |
|:-----------:|:--------:|:-------:|
| ![Home](assets/images/foundation/banner.jpg) | ![Programs](assets/images/programs/physiotherapy.jpg) | ![Gallery](assets/images/gallery/event1.jpg) |

| Appointment | Contact | About |
|:-----------:|:-------:|:-----:|
| 📅 | 📞 | 👥 |

</div>

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.7.2 or higher
- Dart SDK 3.7.2 or higher
- Android Studio / VS Code with Flutter extensions
- Firebase project setup
- Android SDK (for Android development)

### Installation

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
   - Add your `google-services.json` file to `android/app/`
   - Ensure Firebase project is properly configured

4. **Run the app**
   ```bash
   flutter run
   ```

### Build for Production

**Android APK:**
```bash
flutter build apk --release
```

**Android App Bundle (for Play Store):**
```bash
flutter build appbundle --release
```

---

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   └── appointment.dart      # Appointment data model
├── screens/
│   ├── home_screen.dart      # Home screen with hero section
│   ├── about_screen.dart     # About foundation screen
│   ├── programs_screen.dart  # Healthcare programs
│   ├── gallery_screen.dart   # Image gallery
│   ├── book_appointment_screen.dart  # Appointment booking
│   └── contact_screen.dart   # Contact information
├── utils/
│   ├── colors.dart          # App color scheme
│   ├── validators.dart      # Form validation
│   └── whatsapp_helper.dart # WhatsApp integration
└── widgets/
    ├── bottom_nav_bar.dart   # Custom bottom navigation
    ├── custom_app_bar.dart   # Custom app bar
    ├── custom_button.dart    # Reusable button component
    └── program_card.dart     # Program display card
```

---

## 🎨 Design Features

### Color Scheme
- **Primary**: Blue (#2196F3) - Trust and healthcare
- **Secondary**: Green (#4CAF50) - Growth and wellness
- **Accent**: Cyan (#00BCD4) - Modern and fresh
- **Gradients**: Smooth color transitions for visual appeal

### Typography
- **Font Family**: Poppins (via Google Fonts)
- **Hierarchy**: Clear text sizing and weight variations
- **Accessibility**: High contrast ratios for readability

### UI Components
- **Custom Cards**: Elevated cards with shadows
- **Gradient Backgrounds**: Modern visual elements
- **Interactive Elements**: Smooth animations and transitions
- **Form Validation**: Real-time feedback
- **Responsive Design**: Adapts to different screen sizes

---

## 🔧 Configuration

### Firebase Setup
1. Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
2. Add Android app to the project
3. Download `google-services.json`
4. Place it in `android/app/`
5. Configure Firebase Analytics as needed

### WhatsApp Integration
- Phone number configured in `lib/utils/whatsapp_helper.dart`
- Default: +91-9910832267
- Appointment requests sent via WhatsApp Web API

---

## 📊 Features in Detail

### Appointment Booking System
- **Form Fields**: Name, Phone, Email, Date, Time, Service, Notes
- **Validation**: Real-time form validation
- **Integration**: WhatsApp-based appointment submission
- **User Feedback**: Success/error dialogs

### Navigation
- **Bottom Navigation Bar**: Easy access to all sections
- **Indexed Stack**: Maintains state across screens
- **Analytics**: Screen view tracking via Firebase

### Image Gallery
- **Grid Layout**: 2-column responsive grid
- **Full-Screen View**: Interactive image viewer
- **Zoom Support**: Pinch-to-zoom functionality
- **Image Titles**: Contextual information

---

## 🌐 Website Reference

**Official Website**: [https://dharatalfoundation.com/](https://dharatalfoundation.com/)

The mobile app complements the foundation's website, providing a mobile-first experience for users to:
- Access healthcare information on-the-go
- Book appointments directly from their phones
- View gallery and activities
- Contact the foundation easily

---

## 📦 Production Status

✅ **Production Ready** - This application is fully developed, tested, and ready for deployment.

### Current Status
- ✅ Core features implemented
- ✅ UI/UX polished
- ✅ Firebase integration complete
- ✅ Form validation in place
- ✅ WhatsApp integration working
- ✅ Responsive design implemented
- ✅ Error handling implemented

### Coming Soon
- 🚀 **Google Play Store** - App will be published soon
- 📱 iOS version (future release)
- 🔔 Push notifications
- 📊 Enhanced analytics
- 🌍 Multi-language support

---

## 🤝 Contributing

This is a production application for Dharatal Foundation. For contributions or inquiries, please contact:
- **Email**: info@dharatalfoundation.com
- **Phone**: +91-9910832267

---

## 📄 License

This project is proprietary software developed for Dharatal Foundation. All rights reserved.

---

## 👨‍💼 About the Founder

**A.K Jain** - Former Director P.F.C (Govt. of India)

A distinguished academic and dedicated social worker, A.K Jain embodies a legacy of excellence and service. With a remarkable career spanning from engineering at IIT Roorkee to prestigious roles in organizations like PFC and DSO, his commitment to community welfare is unparalleled.

---

## 📞 Contact Information

**Dharatal Foundation**

📍 **Address**: House No. 91, Ground Floor, Kiran Vihar, Karkardooma, Delhi - 110092

📱 **Phone**: +91-9910832267

📧 **Email**: info@dharatalfoundation.com, jainashok1123@gmail.com

🌐 **Website**: [https://dharatalfoundation.com/](https://dharatalfoundation.com/)

---

## 🙏 Acknowledgments

- Dharatal Foundation team and volunteers
- Healthcare practitioners and staff
- Community partners and supporters
- All contributors to the Flutter and Firebase ecosystems

---

<div align="center">

**Made with ❤️ for Dharatal Foundation**

*Serving the underprivileged through excellence in healthcare*

[⬆ Back to Top](#-dharatal-foundation-mobile-app)

</div>
