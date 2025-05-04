import 'package:flutter/material.dart';
import '../../models/product_model.dart';
import 'product_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> products = [
      ProductModel(
        imageUrl: 'https://www.seoclerk.com/pics/001/713/387/241a500d2849f814c4b5a2e80e9194b0.jpg',
        title: 'App Catch',
      ),
      ProductModel(
        imageUrl: 'https://fireart.studio/wp-content/uploads/2021/12/concept.jpg',
        title: 'Concept App',
      ),
      ProductModel(
        imageUrl: 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/344022943/original/9e968ac75388299a53d00c96f9d64d6009f88cf0/create-an-attractive-mobile-app-ui-ux-and-all-app-designs.jpg',
        title: 'UI UX App',
      ),
      ProductModel(
        imageUrl: 'https://i.ytimg.com/vi/d51w0HEPWzQ/maxresdefault.jpg',
        title: 'MaxRes App',
      ),
      ProductModel(
        imageUrl: 'https://i.ytimg.com/vi/d51w0HEPWzQ/maxresdefault.jpg',
        title: 'MaxRes App',
      ),

    ];

    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Widgets',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: products.map((product) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5,
                                spreadRadius: 2,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(product.imageUrl),
                            ),
                          ),
                          width: 270,
                          height: 200,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailsPage(
                                    title:  product.title,
                                    images: [
                                      'https://www.seoclerk.com/pics/001/713/387/241a500d2849f814c4b5a2e80e9194b0.jpg',
                                      'https://i.ytimg.com/vi/d51w0HEPWzQ/maxresdefault.jpg',
                                      'https://fireart.studio/wp-content/uploads/2021/12/concept.jpg',
                                    ],
                                  ),
                                ),
                              );

                            },
                          ),
                        ),
                        Text(
                          product.title,
                          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                color: Colors.grey.shade400,
                height: 4,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Link Plugins',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: products.map((product) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5,
                                spreadRadius: 2,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(product.imageUrl),
                            ),
                          ),
                          width: 320,
                          height: 240,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDetailsPage(
                                    title: 'اسم المنتج',
                                    images: [
                                      'https://www.seoclerk.com/pics/001/713/387/241a500d2849f814c4b5a2e80e9194b0.jpg',
                                      'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/344022943/original/9e968ac75388299a53d00c96f9d64d6009f88cf0/create-an-attractive-mobile-app-ui-ux-and-all-app-designs.jpg',
                                      'https://www.seoclerk.com/pics/001/713/387/241a500d2849f814c4b5a2e80e9194b0.jpg',
                                    ],
                                  ),
                                ),
                              );

                            },
                          ),
                        ),
                        Text(
                          product.title,
                          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                color: Colors.grey.shade400,
                height: 4,
              ),
            ],
          ),


        ],
      ),
    );
  }
}
