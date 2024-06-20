import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  CustomNavBar({required this.selectedIndex, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, 
      color: const Color.fromARGB(255, 0, 1, 84), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceAround, 
        children: [
          NavBarItem(
            icon: Icons.home,
            title: 'Main',
            isSelected: selectedIndex == 0,
            onTap: () {
              onItemSelected(0); 
            },
          ),
          NavBarItem(
            icon: Icons.games,
            title: 'Games',
            isSelected: selectedIndex == 1,
            onTap: () {
              onItemSelected(1); 
            },
          ),
          NavBarItem(
            icon: Icons.book_sharp,
            title: 'Word Nation',
            isSelected: selectedIndex == 2,
            onTap: () {
              onItemSelected(2); // Panggil fungsi callback ketika item dipilih
            },
          ),
          NavBarItem(
            icon: Icons.person,
            title: 'Profile',
            isSelected: selectedIndex == 3,
            onTap: () {
              onItemSelected(3); // Panggil fungsi callback ketika item dipilih
            },
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final Function onTap;

  NavBarItem({
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(); // Panggil fungsi callback ketika item dipilih
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: 8, horizontal: 16), // Padding item navbar
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.white
              : Colors
                  .transparent, // Warna latar belakang item navbar saat terpilih
          borderRadius: BorderRadius.circular(
              10), // Membuat sudut item navbar menjadi melengkung
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected
                  ? Colors.blue
                  : Colors.white, // Warna ikon navbar saat terpilih
            ),
            SizedBox(width: 8), // Jarak antara ikon dan teks
            Text(
              title,
              style: TextStyle(
                color: isSelected
                    ? Colors.blue
                    : Colors.white, // Warna teks navbar saat terpilih
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
