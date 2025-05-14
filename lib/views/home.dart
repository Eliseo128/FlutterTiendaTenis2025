import 'package:flutter/material.dart';
import 'package:myapp/model/data_producto.dart';
import 'package:myapp/widgets/banner.dart';
import 'package:myapp/widgets/custom_app_bar.dart';
import 'package:myapp/widgets/product_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // Obtener ancho de pantalla
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(), // custom_app_bar.dart';
           
            Expanded(
              child: ListView(
                children: [
                   //const MainBanner(),//banner.dart';
                     SizedBox(
                     width: screenWidth,
                     height: screenWidth * 0.5, // Ejemplo: altura es la mitad del ancho
                     child: const MainBanner(),//banner.dart';
                   ),
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: products.length,
                    itemBuilder:
                        (context, index) =>
                            ProdcutTile(product: products[index]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
