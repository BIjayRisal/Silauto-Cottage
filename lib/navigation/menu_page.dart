import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  Widget categoriesContainer({required String image, required String name})
  {
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 50,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image),
                fit:BoxFit.contain ),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(height: 10,),
        Text(name,style: TextStyle(fontSize: 20, color: Colors.red),)
      ],
    );
  }
  Widget bottonContainer({required String image, required int price, required String name}){
    return Container(
      height: 270,
      width: 220,
      decoration:
      BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(image),
          ),
          ListTile(
            leading: Text(
              name,
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
            trailing: Text(
              "\$ $price",
              style: TextStyle(fontSize: 20,color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star,size: 22, color: Colors.white,),
                Icon(Icons.star,size: 22, color: Colors.white,),
                Icon(Icons.star,size: 22, color: Colors.white,),
                Icon(Icons.star,size: 22, color: Colors.white,),
                Icon(Icons.star,size: 22, color: Colors.white,),
              ],
            ),
          ),

        ],
      ),
    );
  }
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                prefixIcon: Icon(Icons.search, color: Colors.red[600],),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 categoriesContainer(
                     image: 'assets/images/burger.png',
                     name:'All'),

                  categoriesContainer(
                      image: 'assets/images/momo.png',
                      name:'Momo'),

                  categoriesContainer(
                      image: 'assets/images/pizza.png',
                      name:'Pizza'),

                  categoriesContainer(
                      image: 'assets/images/drinks.png',
                      name:'Drinks'),

                  categoriesContainer(
                      image: 'assets/images/sandwhich.png',
                      name:'Sandwich'),
                  categoriesContainer(
                      image: 'assets/images/khana.png',
                      name:'Khana'),
                ],
              ),
            ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.all(20),
              height: 510,
              child: GridView.count(
                shrinkWrap: false,
                primary: false,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  bottonContainer(
                      image: 'assets/images/momo.png',
                      price: 26,
                      name: "Momo",
                  ),
                  bottonContainer(
                    image: 'assets/images/pizza.png',
                    price: 40,
                    name: "Pizza",
                  ),

                  bottonContainer(
                    image: 'assets/images/burger.png',
                    price: 20,
                    name: "Burger",
                  ),

                  bottonContainer(
                    image: 'assets/images/drinks.png',
                    price: 40,
                    name: "Drinks",
                  ),

                  bottonContainer(
                    image: 'assets/images/sandwhich.png',
                    price: 40,
                    name: "Sandwich",
                  ),

                  bottonContainer(
                    image: 'assets/images/khana.png',
                    price: 60,
                    name: "Khana",
                  ),

                ],
              ),
            ),
          )
          ],
        ),
    );
  }
}
