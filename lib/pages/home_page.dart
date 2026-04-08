// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_button.dart';
import 'package:walletapp/util/my_card.dart';
import 'package:walletapp/util/my_list_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        shape: const CircleBorder(),
        child: const Icon(Icons.monetization_on, size: 32, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home, size: 32, color: Colors.deepPurple),
              ),
              Container(width: 100),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.settings, size: 32, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //app bar
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My',
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Text(' Cards', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300, color: Colors.white)),
                      ],
                    ),

                    // btn add
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // cards
              Container(
                height: 250,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5250.20,
                      cardNumber: 12345678,
                      expiryMonth: 11,
                      expiryYear: 22,
                      color: Colors.deepPurple[300],
                    ),
                    MyCard(
                      balance: 50.20,
                      cardNumber: 12345678,
                      expiryMonth: 11,
                      expiryYear: 23,
                      color: Colors.pink[200],
                    ),
                    MyCard(
                      balance: 342.23,
                      cardNumber: 12345678,
                      expiryMonth: 8,
                      expiryYear: 12,
                      color: Colors.blue[300],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),

              SizedBox(height: 20),

              // menu
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // send
                    MyButton(
                      iconImagePath: 'lib/icons/send-money.png',
                      buttonText: 'Send',
                    ),

                    // pay
                    MyButton(
                      iconImagePath: 'lib/icons/credit-card.png',
                      buttonText: 'Pay',
                    ),

                    // bills
                    MyButton(
                      iconImagePath: 'lib/icons/bill.png',
                      buttonText: 'Bills',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),

              // stat transaction
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    MyListTile(
                      iconImagePath: 'lib/icons/statistics.png',
                      tileTitle: 'Statistics',
                      tileSubtitle: 'Payment and Income',
                    ),
                    MyListTile(
                      iconImagePath: 'lib/icons/transaction.png',
                      tileTitle: 'Transaction',
                      tileSubtitle: 'Transaction History',
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
