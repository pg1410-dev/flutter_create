// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_create/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_create/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_create/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenHeight,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.theme.secondaryHeaderColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .color(context.theme.secondaryHeaderColor)
                          .center
                          .make(),
                      10.heightBox,
                      "Who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences"
                          .text
                          .color(context.theme.secondaryHeaderColor)
                          .textStyle(context.captionStyle)
                          .make()
                          .p16()
                    ],
                  ).py32(),
                ),
              ),
            ),
          ],
        ).p16(),
      ),
    );
  }
}
