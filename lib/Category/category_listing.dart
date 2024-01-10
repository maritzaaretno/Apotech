import 'package:flutter/material.dart';

import '../Main/home_screen.dart';
import 'detail_screen.dart';

class CategoryList extends StatefulWidget{
  const CategoryList({super.key});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        title: const Text(
          'Diabetes Care',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/saveextrahome.png',
              width: 450,
              height: 150,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 40,),
                Text('Diabetic Diet',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.bold,
                  ),),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          width: 110,
                          height: 162,
                          child: Column(
                            children: [
                              Image.asset('assets/images/cat1.png',width: 109, height: 99,),
                              const SizedBox(height: 5,),
                              const Text(
                                'Sugar \nSubstitute',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          width: 110,
                          height: 162,
                          child: Column(
                            children: [
                              Image.asset('assets/images/cat2.png',width: 109, height: 99,),
                              const SizedBox(height: 5,),
                              const Text('Juice \nVinegar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          width: 110,
                          height: 162,
                          child: Column(
                            children: [
                              Image.asset('assets/images/cat3.png',width: 109, height: 99,),
                              const SizedBox(height: 5,),
                              const Text('Vitamins \nMedicine',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                ),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 40,),
                Text('All Products',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight:FontWeight.bold,
                  ),),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen()),
                    );
                  },
                  child: Container(
                    width: 180,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          width: 178,
                          height: 154,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(5),
                              color: const Color(0xFFEEEEF0)),
                          child: Image.asset(
                              'assets/images/dotd1.png'),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Accu-check Active\nTest Strip',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Rp 112.000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 180,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: 178,
                        height: 154,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(5),
                            color: const Color(0xFFEEEEF0)),
                        child: Image.asset(
                            'assets/images/dotd2.png'),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Omron HEM-8712 \nBP Monitor',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        'Rp 112.000',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen()),
                    );
                  },
                  child: Container(
                    width: 180,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          width: 178,
                          height: 154,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(5),
                              color: const Color(0xFFEEEEF0)),
                          child: Image.asset(
                              'assets/images/dotd1.png'),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Accu-check Active\nTest Strip',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Rp 112.000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen()),
                    );                  },
                  child: Container(
                    width: 180,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          width: 178,
                          height: 154,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(5),
                              color: const Color(0xFFEEEEF0)),
                          child: Image.asset(
                              'assets/images/dotd2.png'),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Omron HEM-8712 \nBP Monitor',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Rp 112.000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}