import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/program_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(context),
            const SizedBox(height: 24),
            _buildStatsSection(),
            const SizedBox(height: 24),
            _buildProgramsSection(context),
            const SizedBox(height: 24),
            _buildCTASection(context),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -50,
            top: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: -30,
            bottom: -30,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Text(
                  'Welcome to',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: AppColors.white.withOpacity(0.9),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dharatal Foundation',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Serving the underprivileged through excellence in healthcare',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColors.white.withOpacity(0.9),
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: 'Book Appointment',
                  backgroundColor: AppColors.white,
                  textColor: AppColors.primary,
                  onPressed: () {
                    // Navigate to appointment screen
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: _buildStatCard('14+', 'Years of Service'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _buildStatCard('3', 'Programs'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _buildStatCard('1000+', 'Patients Served'),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String number, String label) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            number,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: AppColors.textSecondary,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgramsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Programs',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 16),
          ProgramCard(
            title: 'Physiotherapy Centre',
            description: 'Qualified physiotherapists conducting assessments and consultations for mobility and pain management.',
            icon: Icons.medical_services,
            iconColor: AppColors.primary,
            onTap: () {
              // Navigate to programs screen
            },
          ),
          const SizedBox(height: 16),
          ProgramCard(
            title: 'Homeopathic Medicine',
            description: 'Personalized treatments and informative sessions about homeopathy\'s gentle approach.',
            icon: Icons.healing,
            iconColor: AppColors.secondary,
            onTap: () {
              // Navigate to programs screen
            },
          ),
          const SizedBox(height: 16),
          ProgramCard(
            title: 'Eye Care Health',
            description: 'Comprehensive eye examinations and interactive sessions on preventive measures.',
            icon: Icons.visibility,
            iconColor: AppColors.accent,
            onTap: () {
              // Navigate to programs screen
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCTASection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: AppColors.secondaryGradient,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(
            Icons.volunteer_activism,
            size: 48,
            color: AppColors.white,
          ),
          const SizedBox(height: 16),
          Text(
            'Make a Difference',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Join us in serving the community through healthcare excellence',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: AppColors.white.withOpacity(0.9),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: 'Learn More',
            backgroundColor: AppColors.white,
            textColor: AppColors.secondary,
            onPressed: () {
              // Navigate to about screen
            },
          ),
        ],
      ),
    );
  }
}
