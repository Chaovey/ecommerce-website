import 'package:ecommerce_website/menu/menu_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
              16.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, 
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
                          borderRadius:
                              BorderRadius.circular(30.0),
                          border: Border.all(
                              color: Colors.grey[300]!),
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
              Row(
                children: [
                  MenuItems(title: 'Home', press: (){}),
                  MenuItems(title: 'Category', press: (){}),
                  MenuItems(title: 'About', press: (){}),
                  MenuItems(title: 'Contact', press: (){}),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.message)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.production_quantity_limits_sharp)),
                ],
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.red
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
