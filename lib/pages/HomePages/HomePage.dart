import 'package:bkash/pages/HomePages/AppBar/AppBar.dart';
import 'package:bkash/pages/addMoney/addMoneyScreen.dart';
import 'package:bkash/pages/cashOut/cashOutScreen.dart';
import 'package:bkash/pages/makePayment/makePaymentScreen.dart';
import 'package:bkash/pages/sendMoney/SendMoneyScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../MobileRecharge/mobileRecharge.dart';
import '../MoreItem/moreScreen.dart';
import '../PayBill/PayBillScreen.dart';
import '../tickets/tickets.dart';
import '../widget/MenuItem.dart';
import '../widget/carouselItems.dart';
import '../widget/myBkashSection.dart';
import '../widget/offerItems.dart';
import 'BottomBar/BottomBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // HomePage Button Section
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    menuItem(
                      'assets/images/icons/sendMoney.png',
                      'Send Money',
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SendMoneyScreen()));
                      },
                    ),
                    menuItem(
                        'assets/images/icons/mobileRecharge.png', 'Recharge',
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MobileRecharge()));
                    }),
                    menuItem('assets/images/icons/cashOut.png', 'Cash Out', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CashOutScreen()));
                    }),
                    menuItem('assets/images/icons/payment.png', 'Payments', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MakePaymentScreen()));
                    })
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    menuItem('assets/images/icons/addMoney.png', 'Add Money',
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddMoneyScreen()));
                    }),
                    menuItem('assets/images/icons/payBill.png', 'Pay Bill', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PayBillScreen()));
                    }),
                    menuItem('assets/images/icons/remittance.png', 'Remittance',
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TicketScreen()));
                    }),
                    menuItem('assets/images/icons/education.png', 'Edu.', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MoreScreen()));
                    }),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Recent Activity Section
              Container(
                height: 10,
                width: mediaSize.width,
                color: Colors.grey.withOpacity(0.1),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 150,
                  width: mediaSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('My bKash'),
                            Text(
                              'See All',
                              style: TextStyle(color: Colors.pink),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              mybKashItem('assets/HomePage/make_payment.jpg',
                                  'NNV Coders'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem('assets/HomePage/mobile_recharge.jpg',
                                  'Shirin Yasmin'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem('assets/HomePage/pay_bill.jpg',
                                  'Saved Bills'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem('assets/HomePage/tickets.jpg',
                                  'TikaToly Cinema'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem('assets/HomePage/mobile_recharge.jpg',
                                  'Shirin Yasmin'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem('assets/HomePage/pay_bill.jpg',
                                  'Saved Bills'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // HomePage Slider Section
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: CarouselSlider(
                    items: carouselItems,
                    options: CarouselOptions(
                      height: 100,
                      autoPlay: true,
                      viewportFraction: 1,
                    )),
              ),
              // Sponsor Section
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 150,
                  width: mediaSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sponsored Company'),
                            Text(
                              'See All',
                              style: TextStyle(color: Colors.pink),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              mybKashItem('assets/HomePage/daraz.jpg', 'Daraz'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem('assets/HomePage/shadhin_music.jpg',
                                  'Shadhin Music'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem(
                                  'assets/HomePage/bdnews24.jpg', 'BD News 24'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem(
                                  'assets/HomePage/akash.jpg', 'Akash DTH'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem(
                                  'assets/HomePage/stiline.jpg', 'Stiline'),
                              const SizedBox(
                                width: 20,
                              ),
                              mybKashItem(
                                  'assets/HomePage/coronabd.jpg', 'Corona BD'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Offer Section
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 215,
                  width: mediaSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Offers'),
                            Text(
                              'See All',
                              style: TextStyle(color: Colors.pink),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              offerItems(mediaSize),
                              const SizedBox(
                                width: 20,
                              ),
                              offerItems(mediaSize),
                              const SizedBox(
                                width: 20,
                              ),
                              offerItems(mediaSize),
                              const SizedBox(
                                width: 20,
                              ),
                              offerItems(mediaSize),
                              const SizedBox(
                                width: 20,
                              ),
                              offerItems(mediaSize),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Others Service
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 235,
                  width: mediaSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Others Services'),
                        Divider(
                          thickness: 0.5,
                          color: Colors.black.withOpacity(0.2),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mybKashItem('assets/HomePage/flyover_toll.jpg',
                                'Flyover Toll'),
                            mybKashItem('assets/HomePage/btcl.jpg', 'BTCL'),
                            mybKashItem(
                                'assets/HomePage/metlife.jpg', 'Metlife'),
                            mybKashItem(
                                'assets/HomePage/donation.jpg', 'Donation'),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mybKashItem(
                                'assets/HomePage/pay_bill.jpg', 'Pay Bill'),
                            mybKashItem(
                                'assets/HomePage/add_money.jpg', 'Add Money'),
                            mybKashItem(
                                'assets/HomePage/make_payment.jpg', 'Payment'),
                            mybKashItem(
                                'assets/HomePage/card_bill.jpg', 'Card Bill'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Single Image Section
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                  height: 85,
                  width: mediaSize.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/sliderImage1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Single Offer Section
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 300,
                  width: mediaSize.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/offer.gif',
                          height: 100,
                          width: 100,
                        ),
                        const Text(
                          'Recharge ৳100 Get 180 Minutes',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text('With ৳5 Cashback, Validity 7 days'),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                side: const BorderSide(
                                  color: Colors.pink,
                                )),
                            child: const Text(
                              'Recharge Now',
                              style: TextStyle(color: Colors.pink),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // floatingActionButton: Container(
        //   decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       //     boxShadow: [
        //       //   BoxShadow(color: Colors.white, spreadRadius: 7, blurRadius: 1)
        //       // ],
        //       border: Border.all(color: Colors.white, width: 10)),
        //   child: FloatingActionButton(
        //     backgroundColor: Colors.white,
        //     onPressed: () {},
        //     child: const Icon(
        //       Icons.qr_code_scanner_outlined,
        //       color: Colors.pink,
        //     ),
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.qr_code_scanner_outlined,
            color: Colors.pink,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: BottomNavigationBar(
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Colors.white,
        //   backgroundColor: Colors.pink,
        //   onTap: (index) {
        //     setState(() {
        //       selectedIndex = index;
        //       print(index);
        //     });
        //   },
        //   currentIndex: selectedIndex,
        //   items: const [
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.home,
        //           size: 30,
        //           color: Colors.white,
        //         ),
        //         label: 'Home'),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.forward_to_inbox,
        //         size: 30,
        //       ),
        //       label: 'Inbox',
        //     ),
        //   ],
        // ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
