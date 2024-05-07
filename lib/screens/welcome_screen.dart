import 'package:flutter/material.dart';
import 'package:sad/widgets/custom_icon_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart_checkout, size: 64, color: Theme.of(context).colorScheme.primary,),
            Text("MINIMAL SHOP", style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            CustomIconButton(onTap: () {Navigator.pushNamed(context, '/main_screen');}, icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }
}