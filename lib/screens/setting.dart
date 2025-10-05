import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Center Content
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.book, size: 80, color: Colors.white),
                    const SizedBox(height: 20),
                    Text(
                      "My Favourite Books",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "All your liked books in one place",
                      style: GoogleFonts.openSans(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Made with ",
                        style: GoogleFonts.lobster(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Icon(Icons.favorite, color: Colors.red, size: 18),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Muhammad Ahmad\nMuhammad Adil\nHasnat Chaudry",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lobster(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
