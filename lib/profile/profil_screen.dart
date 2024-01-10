import 'package:flutter/material.dart';

import '../Main/home_screen.dart';
import '../cart/cart.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen>{
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const CartScreen(),
    const ProfilScreen(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('My Profile',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 20,height: 20,),
                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    width: 82,
                    height: 82,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, Lorem Ipsum',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    Text('Welcome to Apotech',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),)
                  ],
                )
              ],
            ),
            const SizedBox(height: 40,),
            const Row(
              children: [
                SizedBox(width: 40,),
                Icon(
                  Icons.article_outlined,size: 24,color: Color(0xFF091C3F),
                ),
                SizedBox(width: 20),
                Text('Private Account', style: TextStyle(
                    color: Color(0xFF091C3F),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                SizedBox(width: 140),
                Icon(
                  Icons.arrow_forward_ios,size: 16,color: Color(0xFF091C3F),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                SizedBox(width: 40,),
                Icon(
                  Icons.health_and_safety_outlined,size: 24,color: Color(0xFF091C3F),
                ),
                SizedBox(width: 20),
                Text('My Consults', style: TextStyle(
                    color: Color(0xFF091C3F),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                SizedBox(width: 165),
                Icon(
                  Icons.arrow_forward_ios,size: 16,color: Color(0xFF091C3F),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                SizedBox(width: 40,),
                Icon(
                  Icons.list_alt_outlined,size: 24,color: Color(0xFF091C3F),
                ),
                SizedBox(width: 20),
                Text('My Orders', style: TextStyle(
                    color: Color(0xFF091C3F),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                SizedBox(width: 180),
                Icon(
                  Icons.arrow_forward_ios,size: 16,color: Color(0xFF091C3F),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                SizedBox(width: 40,),
                Icon(
                  Icons.access_time_outlined,size: 24,color: Color(0xFF091C3F),
                ),
                SizedBox(width: 20),
                Text('Billing', style: TextStyle(
                    color: Color(0xFF091C3F),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                SizedBox(width: 208),
                Icon(
                  Icons.arrow_forward_ios,size: 16,color: Color(0xFF091C3F),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                SizedBox(width: 40,),
                Icon(
                  Icons.question_mark,size: 24,color: Color(0xFF091C3F),
                ),
                SizedBox(width: 20),
                Text('Faq', style: TextStyle(
                    color: Color(0xFF091C3F),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                SizedBox(width: 228),
                Icon(
                  Icons.arrow_forward_ios,size: 16,color: Color(0xFF091C3F),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                SizedBox(width: 40,),
                Icon(
                  Icons.settings,size: 24,color: Color(0xFF091C3F),
                ),
                SizedBox(width: 20),
                Text('Settings', style: TextStyle(
                    color: Color(0xFF091C3F),
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
                SizedBox(width: 194),
                Icon(
                  Icons.arrow_forward_ios,size: 16,color: Color(0xFF091C3F),
                ),
              ],
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => _screens[_currentIndex]),
            );
          },
          selectedIconTheme: const IconThemeData(color: Color(0xFF4157FF)),
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 32),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 32),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFF4157FF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.add,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag, size: 32),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 32),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}