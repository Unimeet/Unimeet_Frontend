import 'package:flutter/material.dart';
import 'package:unimeet/src/utils/user_secure_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class BuddyCard extends StatelessWidget {
  const BuddyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0001/9202/0527/products/quadros-democrart-gustavo-jacob-ondas-paisagem-de-baixa-luz-beleza-incontavel-galeria-de-arte-obras-de-arte_7ba14f0d-e0e9-4dc2-adc0-2121e3fa734e_875x.jpg?v=1528209171'),
              ),
              title: Text(
                'Isabela Cristina',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Ciencia da computacao',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Icon(Icons.whatsapp),
                  onPressed: () async {
                    launchWhatsApp(phone: '5512997380103');
                  },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Icon(Icons.email),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void launchWhatsApp({required String phone}) async {
    final Uri whatsapp = Uri.parse('https://wa.me/$phone');
    await canLaunchUrl(whatsapp)
        ? launchUrl(whatsapp)
        : print("Can't open whatsapp");
  }

  /* Future<void> getData() async {
    String? tempNumber = await UserSecureStorage.getPhone();
    
    setState(() {
      name = tempName!;
      profilePic = tempImage!;
    });
  }*/
}
