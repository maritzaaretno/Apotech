import 'package:apotech/cart/cart.dart';
import 'package:flutter/material.dart';

import '../Main/home_screen.dart';

class DetailScreen extends StatefulWidget{
  const DetailScreen({super.key});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              children: [
                SizedBox(width: 30,),
                Text('Sugar Free Gold Low Calories',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight:FontWeight.bold,
                  ),),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 30,),
                Text('Etiam mollis metus non purus ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight:FontWeight.w300,
                  ),),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              width: 350,
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Image.asset(
                'assets/images/1.png',
                width: 450,
                height: 150,
                alignment: Alignment.center,
              ),
            ),
            Row(
              children: [
                const Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 24,),
                        Text('Rp 56.000',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight:FontWeight.bold,
                          ),),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 24,),
                        Text('Etiam mollis',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight:FontWeight.w300,
                          ),),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 150,),
                        TextButton(
                          onPressed: () {
                          },
                          child: const Text('Add to cart',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Divider(height: 20, thickness: 1),
            const Row(
              children: [
                SizedBox(width: 30,),
                Text('Package Size',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold,
                  ),),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  width: 79,
                  height: 68,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
                      borderRadius: BorderRadius.circular(5),
                    border: Border.all()
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Text('Rp 252.000',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                      Text('500 Pellets',
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),)
                    ],
                  )
                ),
                const SizedBox(width: 10),
                Container(
                    width: 79,
                    height: 68,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all()
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Text('Rp 100.000',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                        Text('110 Pellets',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),)
                      ],
                    )
                ),
                const SizedBox(width: 10),
                Container(
                    width: 79,
                    height: 68,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all()
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Text('Rp 160.000',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                        Text('300 Pellets',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),)
                      ],
                    )
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                SizedBox(width: 30,),
                Text('Product Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold,
                  ),),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 30),
                SizedBox(
                  width: 340,
                  child: Expanded(
                    child: Text(
                      'Interdum et malesuada fames ac ante ipsum primis in faucibus.Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                SizedBox(width: 30,),
                Text('Rating and Reviews',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold,
                  ),),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 30,),
                Row(
                  children: [
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text('4.4',
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight:FontWeight.bold,
                              ),),
                            SizedBox(width: 10,),
                            Icon(Icons.star, color: Colors.yellow,size: 26,)
                          ],
                        ),
                        Row(
                          children: [
                            Text('923 Ratings \nand 257 Reviews',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black26
                              ),),
                          ],
                        )
                      ],
                    ),
                    const VerticalDivider(
                      width: 20,
                      thickness: 5,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text('5',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                            const Icon(Icons.star,color: Colors.yellow,),
                            const SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 4.4 / 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text('67%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('4',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                            const Icon(Icons.star,color: Colors.yellow,),
                            const SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 2.3 / 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text('20%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('3',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                            const Icon(Icons.star,color: Colors.yellow,),
                            const SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0 / 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text('7%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('2',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                            const Icon(Icons.star,color: Colors.yellow,),
                            const SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0 / 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text('0%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('1',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                            const Icon(Icons.star,color: Colors.yellow,),
                            const SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 1 / 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text('2%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black26,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 30, height: 10,),
                Text('Lorem Hoffman',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold,
                  ),),
                SizedBox(width: 120),
                Text('05- oct 2023',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38
                  ),),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 30, height: 10,),
                Icon(Icons.star, color: Colors.yellow,),
                Text('4.2',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black38
                  ),),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 30, height: 20,),
                SizedBox(
                  width: 340,
                  child: Expanded(
                    child: Text(
                      'Interdum et malesuada fames ac ante ipsum primis in faucibus.Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 100,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const CartScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.infinity, 50),
                backgroundColor: Color(int.parse('0xFF4157FF')),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Text(
                    'GO TO CART',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}