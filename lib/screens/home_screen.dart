import 'package:flutter/material.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_card.dart';
import '../widgets/history_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: HomeAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                'Jadwal Angkut Sampah Anda',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const HomeCard(
                title: 'Hari ini - Pukul 10.00 WIB',
                subtitle: '8 Juni 2024\nSampah Kertas, Botol, dan Plastik',
                address:
                    'Jl. Sutorejo Tengah No.10, Dukuh Sutorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60113',
                buttonText: 'Selengkapnya',
              ),
              const SizedBox(height: 16),
              const ImageBanner(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Histori Pickup',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Lihat lainnya'),
                  ),
                ],
              ),
              const HistoryListItem(
                date: '10 Juni 2024 - Pukul 10.00 WIB',
                details: 'Sampah Kertas, Botol, dan Plastik',
                address:
                    'Jl. Sutorejo Tengah No.10, Dukuh Sutorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60113',
                status: 'Selesai',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Pickup'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class ImageBanner extends StatelessWidget {
  const ImageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track dan Kelola Sampah Mu!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Lacak Sampah dan Dukung Lingkungan Lebih Bersih.',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Icon(Icons.recycling, size: 40, color: Colors.green),
        ],
      ),
    );
  }
}
