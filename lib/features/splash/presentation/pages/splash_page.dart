import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _handleInitialization();
  }

  /// This is the "Backend-Ready" hook.
  /// The future developer will replace the delay with real API initialization.
  Future<void> _handleInitialization() async {
    // Simulate initialization (e.g., checking user login status)
    await Future.delayed(const Duration(seconds: 3));

    if (mounted) {
      // Navigate to the next screen defined in your Figma (e.g., Onboarding)
      context.go('/onboarding');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background uses your primary brand green
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          // Background Design Element (Reflecting Figma's 'Containers')
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryLight.withOpacity(0.2),
              ),
            ),
          ),
          
          // Main Branding Center
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo Container (Matches typical Figma wireframe boxes)
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.recycling_rounded,
                    size: 80,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 24),
                // App Name
                Text(
                  'FreshCycle',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: 32,
                      ),
                ),
              ],
            ),
          ),
          
          // Loading Indicator at the bottom
          const Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}