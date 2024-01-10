import 'package:apotech/cart/checkout_success.dart';
import 'package:flutter/material.dart';

import '../Main/home_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 Items in your cart',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    'TOTAL',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    'Rp 185.000',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Delivery Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.blue),
                      child: ListTile(
                        leading: Radio(
                          value: null,
                          groupValue: null,
                          onChanged: (value) {},
                        ),
                        title: const Text('Home'),
                        subtitle: const Text(
                            'Surabaya, Indonesia'),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.edit_outlined,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
              const Row(children: [
                SizedBox(
                  width: 220,
                  height: 20,
                ),
                Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                Text(
                  'Add Address',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Colors.blue),
                ),
              ]),
              const Text(
                'Payment Method',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1.0),
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                  children: [
                    const SizedBox(width: 20,height: 20,),
                    Row(children: [
                      const SizedBox(width: 20),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12, width: 1.0),
                            borderRadius: BorderRadius.circular(6)),
                        child: Image.asset('assets/images/cc.png',
                          width: 32,
                          height: 30,
                        )
                      ),
                      const SizedBox(width: 20,),
                      const Text(
                        'Credit Card',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),

                    ]),
                    const SizedBox(width: 20,height: 10,),
                    Row(children: [
                      const SizedBox(width: 20),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1.0),
                              borderRadius: BorderRadius.circular(6)),
                          child: Image.asset('assets/images/pp.png',
                            width: 32,
                            height: 30,
                          )
                      ),
                      const SizedBox(width: 20,),
                      const Text(
                        'Pay Pal',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),

                    ]),
                    const SizedBox(width: 20,height: 10,),
                    Row(children: [
                      const SizedBox(width: 20),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1.0),
                              borderRadius: BorderRadius.circular(6)),
                          child: Image.asset('assets/images/gp.png',
                            width: 32,
                            height: 30,
                          )
                      ),
                      const SizedBox(width: 20,),
                      const Text(
                        'Google Play',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),

                    ]),
                    const SizedBox(width: 20,height: 10,),
                    Row(children: [
                      const SizedBox(width: 20),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1.0),
                              borderRadius: BorderRadius.circular(6)),
                          child: Image.asset('assets/images/ap.png',
                            width: 32,
                            height: 30,
                          )
                      ),
                      const SizedBox(width: 20,),
                      const Text(
                        'Apple Play',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),

                    ]),
                    const SizedBox(width: 20,height: 20,),
                  ],
                ),
              ),
              const SizedBox(height: 80,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const CheckoutSuccess()),
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
                      'PAY NOW Rp 185.000',
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
      ),
    );
  }
}
