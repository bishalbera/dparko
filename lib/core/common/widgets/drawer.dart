import 'package:flutter/material.dart';
import 'package:parko/core/utils/move_screen.dart';
import 'package:parko/src/home/home_screen.dart';
import 'package:parko/src/profile/profile_screen.dart';

Widget buildStylishDrawer(BuildContext context) {
  final Color primaryGreen = Color.fromARGB(255, 170, 198, 241);
  final Color secondaryGreen = Color.fromARGB(255, 129, 115, 207);
  final Color headerGreen = Color.fromARGB(255, 74, 68, 248);

  return Drawer(
    child: Stack(
      children: <Widget>[
        // Background with gradient
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [primaryGreen, secondaryGreen],
            ),
          ),
        ),

        // List view for drawer items
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Custom header for the drawer
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              decoration: BoxDecoration(
                color: headerGreen,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "${userName}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "${userEmail}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Drawer items
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                moveScreen(context, HomeScreen());
                // Add navigation logic to your home screen.
              },
            ),

            ListTile(
              leading: const Icon(Icons.route, color: Colors.white),
              title: const Text(
                "Get best route",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                moveScreen(context, HomeScreen());
                // Add navigation logic to your profile screen.
              },
            ),

            ListTile(
              leading: const Icon(Icons.park, color: Colors.white),
              title: const Text(
                "Find spots to park",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                moveScreen(context, ParkingScreen());
                // Add navigation logic to your profile screen.
              },
            ),

            ListTile(
              leading: const Icon(Icons.history, color: Colors.white),
              title: const Text(
                "Parking Spots History",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                moveScreen(context, BookingHistoryScreen(userUid: ownerId!));
                // Add navigation logic to your profile screen.
              },
            ),
            ListTile(
              leading: const Icon(Icons.wallet, color: Colors.white),
              title: const Text(
                "Wallet",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                moveScreen(context, WalletScreen());
                // Add navigation logic to your profile screen.
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                moveScreen(context, const ProfileScreen());
                // Add navigation logic to your profile screen.
              },
            ),
            // A divider to separate items
            const Divider(color: Colors.white),

            // Logout button
          ],
        ),
      ],
    ),
  );
}
