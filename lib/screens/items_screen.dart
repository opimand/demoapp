import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFFDAD3C8),
              elevation: 0,
              leading: IconButton(
                icon: SvgPicture.asset(
                  'assets/images/icons/ic_menu.svg',
                ),
                onPressed: () => Navigator.pop(context), //do something,
              ),
              actions: [
                IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/icons/ic_cart.svg',
                    ),
                    onPressed: null //do something,
                    ),
              ],
            ),
            backgroundColor: const Color(0xFFDAD3C8),
            body: const ScreenBody()));
  }
}

class ScreenBody extends StatelessWidget {
  const ScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlockTitle(
              title: "Hot deals",
            ),
            HotDeals(),
            BlockTitle(
              title: "New Arrivals",
            ),
            SizedBox(
                height: 353,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(
                      imageSrc: "assets/images/item.png",
                      productName: "Leatherette Sofa",
                      price: 15.18,
                    ),
                    ProductCard(
                      imageSrc: "assets/images/item.png",
                      productName: "Leatherette Sofa",
                      price: 15.18,
                    ),
                    ProductCard(
                      imageSrc: "assets/images/item.png",
                      productName: "Leatherette Sofa",
                      price: 15.18,
                    ),
                    ProductCard(
                      imageSrc: "assets/images/item.png",
                      productName: "Leatherette Sofa",
                      price: 15.18,
                    ),
                  ],
                )),
            BlockTitle(
              title: "Recently Viewed",
            ),
            RecentlyViewedCard(
              imageSrc: "assets/images/chair_main.png",
            ),
            RecentlyViewedCard(
              imageSrc: "assets/images/item.png",
            ),
            RecentlyViewedCard(
              imageSrc: "assets/images/item2.jpg",
            ),
            RecentlyViewedCard(
              imageSrc: "assets/images/main_photo.png",
            ),
          ],
        ),
      ),
    );
  }
}

class HotDeals extends StatelessWidget {
  const HotDeals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 157,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(18.0),
        color: Color(0xFFD0BEA2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage("assets/images/sofa.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "D.I.Y",
              style: TextStyle(fontSize: 32),
            ),
          ),
        ],
      ),
    );
  }
}

class BlockTitle extends StatelessWidget {
  final String title;
  const BlockTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 27,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
      ),
      const SizedBox(
        height: 18,
      ),
    ]);
  }
}

class ProductCard extends StatelessWidget {
  final String imageSrc;
  final String productName;
  final double price;
  const ProductCard(
      {Key? key, required this.imageSrc, required this.productName, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          Container(
            width: 302,
            height: 330,
            decoration: BoxDecoration(
              color: Color(0xFFE9E5DE),
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 27.0, left: 22, right: 22),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(alignment: Alignment.center, child: Image(image: AssetImage(imageSrc))),
                    SizedBox(
                      height: 27,
                    ),
                    Text(productName),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$ $price",
                      style: TextStyle(color: Color(0xFF3F6900)),
                    )
                  ]),
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: IconButton(
              onPressed: () {
                print("Like");
              },
              icon: SvgPicture.asset(
                'assets/images/icons/ic_like.svg',
              ),
            ),
          )
        ]),
        SizedBox(
          width: 27,
        ),
      ],
    );
  }
}

class RecentlyViewedCard extends StatelessWidget {
  final String imageSrc;
  const RecentlyViewedCard({Key? key, required this.imageSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(9),
      decoration:
          BoxDecoration(color: Color(0xFFE9E5DE), borderRadius: BorderRadius.circular(18.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 84,
            height: 73,
            child: Image(
              image: AssetImage(imageSrc),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Royal Palm Sofa"),
              SizedBox(
                height: 10,
              ),
              Text(
                "\$15.18",
                style: TextStyle(color: Color(0xFF3F6900)),
              ),
            ],
          ),
          IconButton(
              icon: SvgPicture.asset(
                'assets/images/icons/ic_cart.svg',
              ),
              onPressed: null //do something,
              ),
        ],
      ),
    );
  }
}
