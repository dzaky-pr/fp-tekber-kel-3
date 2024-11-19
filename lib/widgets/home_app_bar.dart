import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF68ACB4),
            Color(0xFFCCE400),
          ],
          begin:
              Alignment.topCenter, // Arah gradient (kiri atas ke kanan bawah)
          end: Alignment.bottomCenter,
        ),
      ),
      padding:
          const EdgeInsets.fromLTRB(16, 48, 16, 24), // Sesuaikan padding header
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selamat Pagi\nAdrian!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Sesuaikan agar teks terlihat jelas
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Telusuri disini',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
