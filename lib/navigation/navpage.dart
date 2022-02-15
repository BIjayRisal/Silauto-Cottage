import 'package:flutter/material.dart';
import 'package:silauto_cottage/navigation/cart_page.dart';
import 'package:silauto_cottage/navigation/order_page.dart';
import 'package:silauto_cottage/screens/userInfo.dart';

import 'bookings_page.dart';
import 'cart_page.dart';
import 'order_page.dart';
import 'contacts_page.dart';
import 'event_page.dart';
import 'home_page.dart';
import 'menu_page.dart';
import 'my_drawer_header.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  var currentPage =  DrawerSections.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage == DrawerSections.home){
      container = HomePage();
    }
    else if(currentPage == DrawerSections.bookings){
      container = BookingsPage();
    }
    else if(currentPage == DrawerSections.contact){
      container = ContactsPage();
    }
    else if(currentPage == DrawerSections.menu){
      container = MenuPage();
    }
    else if(currentPage == DrawerSections.events){
      container = EventPage();
    }
    else if(currentPage == DrawerSections.events){
      container = OrderPage();
    }
    else if(currentPage == DrawerSections.events){
      container = CartPage();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Container(
          child: Text("Silauto Cottage", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        actions: <Widget>[
          IconButton(
            icon:  Icon(
              Icons.person_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserInfo()));
            }
          ),
        ],


      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Home", Icons.home_outlined,
              currentPage == DrawerSections.home ? true : false),

          menuItem(2, "Bookings", Icons.book_outlined,
              currentPage == DrawerSections.bookings ? true : false),

          menuItem(3, "Menu", Icons.menu_book_outlined,
              currentPage == DrawerSections.menu ? true : false),

          menuItem(4, "Contact", Icons.contact_mail_outlined,
              currentPage == DrawerSections.contact ? true : false),

          menuItem(5, "Events", Icons.event_available_outlined,
              currentPage == DrawerSections.events ? true : false),

          menuItem(6, "Order", Icons.shop,
              currentPage == DrawerSections.events ? true : false),

          menuItem(7, "Cart", Icons.shopping_cart,
              currentPage == DrawerSections.events ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if(id == 1){
              currentPage = DrawerSections.home;
            }
            else if (id == 2){
              currentPage = DrawerSections.bookings;
            }
            else if (id == 3){
              currentPage = DrawerSections.menu;
            }
            else if (id == 4){
              currentPage = DrawerSections.contact;
            }
            else if (id == 5){
              currentPage = DrawerSections.events;
            }
            else if (id == 6){
              currentPage = DrawerSections.order;
            }
            else if (id == 7){
              currentPage = DrawerSections.cart;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  home,
  bookings,
  menu,
  contact,
  events,
  order,
  cart,

}

