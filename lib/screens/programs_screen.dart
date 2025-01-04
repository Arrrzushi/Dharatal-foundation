import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/program_card.dart';

class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: 'Our Programs',
        showBackButton: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 24),
            _buildProgramsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Programs',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'It helps build trust and credibility, attracts funding and resources, and inspires continued support for the organization\'s mission and work.',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.white.withOpacity(0.9),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgramsList() {
    return Column(
      children: [
        _buildDetailedProgramCard(
          title: 'Physiotherapy Centre',
          subtitle: 'River Park',
          'Qualified physiotherapists conducted assessments and consultations, addressing mobility, posture, and pain management concerns.',
          'Our physiotherapy center at River Park, Baghpat, provides comprehensive rehabilitation services. Our qualified therapists work with patients to improve mobility, correct posture issues, and manage chronic pain conditions.',
          Icons.medical_services,
          AppColors.primary,
          [
            'Mobility Assessment',
            'Posture Correction',
            'Pain Management',
            'Rehabilitation Therapy',
            'Exercise Prescription',
          ],
        ),
        const SizedBox(height: 20),
        _buildDetailedProgramCard(
          title: 'Homeopathic Medicine Camp',
          subtitle: 'Personalized Treatment',
          'With personalized treatments and informative sessions, we raised awareness about homeopathy\'s gentle yet effective approach.',
          'Our homeopathic medicine camps provide personalized treatments using natural remedies. We conduct informative sessions to educate communities about the benefits of homeopathy\'s gentle yet effective approach to healing.',
          Icons.healing,
          AppColors.secondary,
          [
            'Personalized Consultations',
            'Natural Remedies',
            'Health Education',
            'Preventive Care',
            'Community Awareness',
          ],
        ),
        const SizedBox(height: 20),
        _buildDetailedProgramCard(
          title: 'Eye Care Health Checkup',
          subtitle: 'Comprehensive Examinations',
          'With comprehensive eye examinations and interactive sessions, participants received vital information on preventive measures and early detection of eye conditions.',
          'Our eye care health checkup camps provide comprehensive examinations and interactive educational sessions. We focus on preventive measures and early detection of eye conditions to maintain optimal eye health.',
          Icons.visibility,
          AppColors.accent,
          [
            'Vision Testing',
            'Eye Health Screening',
            'Preventive Education',
            'Early Detection',
            'Treatment Referrals',
          ],
        ),
      ],
    );
  }

  Widget _buildDetailedProgramCard({
    required String title,
    required String subtitle,
    required String description,
    required String detailedDescription,
    required IconData icon,
    required Color color,
    required List<String> features,
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'What We Offer:',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          ...features.map((feature) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  size: 16,
                  color: color,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    feature,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
          )),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: color.withOpacity(0.2),
                width: 1,
              ),
            ),
            child: Text(
              detailedDescription,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: AppColors.textSecondary,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
