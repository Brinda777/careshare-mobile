import 'package:care_share_nepal/core/imports/ui_imports.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Contact Us",
          style: TextStyle(
            // fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Company Name & Description
            const Text(
              "Care Share Nepal",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "From Crisis To Care",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Divider(),

            // Location
            const ListTile(
              leading: Icon(Icons.location_on, color: Colors.red),
              title: Text("Kathmandu, Nepal"),
              subtitle: Text("Ring Road, Baluwatar"),
            ),

            // Email
            const ListTile(
              leading: Icon(Icons.email, color: Colors.blue),
              title: Text("contact@caresharenepal.com"),
            ),

            // Phone
            const ListTile(
              leading: Icon(Icons.phone, color: Colors.green),
              title: Text("+977 9800000000"),
            ),

            const SizedBox(height: 10),

            // Social Media
            const Text(
              "Follow us on:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const ListTile(
              leading: Icon(Icons.facebook, color: Colors.blue),
              title: Text("Facebook: @caresharenepal"),
            ),
            const ListTile(
              leading: Icon(Icons.camera_alt, color: Colors.purple),
              title: Text("Instagram: @caresharenepal"),
            ),
            const ListTile(
              leading: Icon(Icons.language, color: Colors.blueAccent),
              title: Text("Twitter: @caresharenepal"),
            ),
            const ListTile(
              leading: Icon(Icons.work, color: Colors.blueGrey),
              title: Text("LinkedIn: CareShareNepal Pvt. Ltd."),
            ),
          ],
        ),
      ),
    );
  }
}
