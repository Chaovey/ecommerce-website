import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_website/menu/menu_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<String> list = [
    'assets/images/banner/banner_1.png',
    'assets/images/banner/banner_2.png',
    'assets/images/banner/banner_3.png',
    'assets/images/banner/banner_4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Footwear',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey[300]!),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            border: InputBorder.none, // No underline border
                            suffixIcon: Container(
                              margin: const EdgeInsets.all(4.0),
                              decoration: const BoxDecoration(
                                color: Color(
                                    0xFF8CCEC0), // Circle background color
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Implement search functionality here
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  MenuItems(title: 'Home', press: () {}),
                  MenuItems(title: 'Category', press: () {}),
                  MenuItems(title: 'About', press: () {}),
                  MenuItems(title: 'Contact', press: () {}),
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.production_quantity_limits_sharp)),
                ],
              ),
              const SizedBox(height: 10),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.5,
                  aspectRatio: 4.0,
                  initialPage: 1,
                ),
                items: list
                    .map(
                      (item) => Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Image.asset(item.toString()),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 10),
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                ),
              ),
               const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                 color: Colors.green,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.watch,size: 50,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.phone,size: 50,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.watch,size: 50,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.watch,size: 50,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.watch,size: 50,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.watch,size: 50,),),
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
