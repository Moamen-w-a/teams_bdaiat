import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ProductDetailsPage extends StatefulWidget {
  final List<String> images;
  final String title;

  const ProductDetailsPage({super.key, required this.images, required this.title});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  late String selectedImage;

  @override
  void initState() {
    super.initState();
    selectedImage = widget.images[0];
  }

  void openFullScreen(String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(),
          body: PhotoView(
            imageProvider: NetworkImage(imageUrl),
            backgroundDecoration: const BoxDecoration(color: Colors.black),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 5,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: 600,
                height: 500,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: PhotoView(
                    imageProvider: NetworkImage(selectedImage),
                    backgroundDecoration: const BoxDecoration(color: Colors.white),
                    minScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.covered * 8,
                  ),
                ),
              ),
              Positioned(
                top: 420,
                right: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.6),
                  child: IconButton(
                    icon: const Icon(Icons.fullscreen, color: Colors.white),
                    onPressed: () {
                      openFullScreen(selectedImage);
                    },
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                final img = widget.images[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = img;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedImage == img ? Colors.blue : Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(img),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 80,
                    height: 80,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
