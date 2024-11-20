import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_e_commerce_mobile/screens/form_product_page.dart';
import 'package:my_e_commerce_mobile/screens/menu.dart';
import 'package:my_e_commerce_mobile/screens/list_product.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'T-Shop',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  'Welcome to T-Shop',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ]
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                )
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Tambah Item'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductFormPage()
                )
              );
            },
          ),
          ListTile(
              leading: const Icon(Icons.add_reaction_rounded),
              title: const Text('Daftar Product'),
              onTap: () {
                  // Route menu ke halaman mood
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                  );
              },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
