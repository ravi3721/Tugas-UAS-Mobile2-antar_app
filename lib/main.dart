import 'package:antar_app/screens/cart_screen.dart';
import 'package:antar_app/screens/checkout2.dart';
import 'package:antar_app/screens/add_product.dart';
import 'package:antar_app/screens/order_list.dart';
import 'package:antar_app/screens/favorit_screen.dart';
import 'package:antar_app/screens/splash.dart';
import 'package:antar_app/screens/wrapper.dart';
import 'package:antar_app/screens/your_profile.dart';
// import 'package:antar_app/screens/camera.dart';
import 'package:flutter/material.dart';
import 'package:antar_app/screens/home.dart';
import 'package:antar_app/screens/item_detail.dart';
import 'package:antar_app/screens/order_history.dart';
import 'package:antar_app/screens/detail_toko.dart';
import 'package:antar_app/screens/menu_toko.dart';
// import 'package:antar_app/screens/auth/register.dart';
import 'package:antar_app/screens/transaction_done.dart';
// import 'package:antar_app/screens/auth/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:antar_app/models/auth_user.dart';
import 'package:antar_app/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AuthUser?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        title: 'antar_app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/splash',
        routes: {
          '/': (context) => const Wrapper(),
          '/home': (context) => const Home(),
          '/item_detail': (context) => const ItemDetail(),
          '/order_history': (context) => const OrderHistory(),
          '/detail_toko': (context) => const DetailToko(),
          '/menu_toko': (context) => const MenuToko(),
          // '/register': (context) => const Register(),
          '/add_product': (context) => const AddProduct(),
          '/transaction_done': (context) => const TransactionDone(),
          '/your_profile': (context) => YourProfile(),
          '/checkout': (context) => const checkout(),
          // '/login': (context) => const Login(),
          // '/camera': (context) => const Camera()
          '/cart_screen': (context) => const CartScreen(),
          '/order_list': (context) => const OrderList(),
          '/favorit': (context) => const FavoritScreen(),
          '/splash': (context) => Splash(),
        },
      ),
    );
  }
}
