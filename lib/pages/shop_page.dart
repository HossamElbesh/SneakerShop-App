import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/shoe.dart';
import '../components/shoe_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Successfully Added"),
          content: Text("Check Your Cart"),
        ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context,value,child) => Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search", style: TextStyle(color: Colors.grey),),
                  Icon(Icons.search),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Everyone Flies.. Some Fly Longer Than Others",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Hot Picks 🔥",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),

                  Text("See All",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
                ],
              ),
            ),

            const SizedBox(height: 10,),

            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index) {
                  Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTab: () => addShoeToCart(shoe),
                  );
                }
                ,)
              ,),

            const Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Divider(
                color: Colors.white,
              ),
            ),



          ],
        ));
  }
}
