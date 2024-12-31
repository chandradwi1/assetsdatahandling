import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: const ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          const SizedBox(height: 20),
          Text('Chandra Dwi Setiawan',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(
              'Saya Chandra Dwi Setiawan mahasiswa teknik informatika.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.cake),
                  title: Text('Tanggal Lahir'),
                  subtitle: Text('9 September 2002'),
                ),
                ListTile(
                    leading: const Icon(Icons.web),
                    title: const Text('Website'),
                    subtitle: const Text('chandradwiportfolio.com'),
                    onTap: () {}),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('chandradwisetiawan80@gmail.com'),
                ),
                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Alamat'),
                  subtitle: Text('Binangun, Wringinanom, Kertek'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Edukasi'),
                  subtitle: Text('Teknik Informatika - UNSIQ\nRPL - SMA Muhammadiyah Wonosobo'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Pengalaman Kerja'),
                  subtitle: Text(
                      '1. Freelance Web Developer (2022 - Sekarang)\n2. Freelance Rental Outdor (2020 - 2022)'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.sports),
                  title: Text('Hobi'),
                  subtitle: Text('1. Mendaki Gunung\n2. Sepak Bola'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}