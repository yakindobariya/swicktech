import 'package:flutter/material.dart';

class VisitorManagementScreen extends StatelessWidget {
  const VisitorManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Visitor Management',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                _buildGridItem('0', 'Upcoming Visitors', 'for Today',
                    Colors.green, Icons.groups),
                _buildGridItem('0', 'Upcoming Appointment', 'for Today',
                    Colors.pink, Icons.pie_chart),
                _buildGridItem('0', 'Upcoming Gate Pass', 'for Today',
                    Colors.orange, Icons.account_balance),
                _buildGridItem('0', 'Upcoming Appointment', 'for Today',
                    Colors.purple, Icons.calendar_today),
              ],
            ),
            const SizedBox(height: 20),
            // List section
            Expanded(
              child: ListView(
                children: [
                  _buildListTile('Scan QR Code',
                      'OR Code scan for record verify', Icons.qr_code),
                  _buildListTile('Visitor Entry', 'Guest mobile number verify',
                      Icons.phone_android),
                  _buildListTile(
                      'Scan Face', 'Human face scan for get data', Icons.face),
                  _buildListTile('New Registration',
                      'New Registration record registered', Icons.person_add),
                  _buildListTile(
                      'Postal', 'Manage all postal', Icons.local_post_office),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(
      String count, String title, String subtitle, Color color, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(count,
              style:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(title,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Text(subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, String subtitle, IconData icon) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, size: 28),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Action for tile
        },
      ),
    );
  }
}
