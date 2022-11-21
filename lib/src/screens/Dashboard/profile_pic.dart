import 'package:flutter/cupertino.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166,
      height: 166,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox.fromSize(
          size: const Size.fromRadius(30),
          child: Image.network(
            'https://cdn.shopify.com/s/files/1/0001/9202/0527/products/quadros-democrart-gustavo-jacob-ondas-paisagem-de-baixa-luz-beleza-incontavel-galeria-de-arte-obras-de-arte_7ba14f0d-e0e9-4dc2-adc0-2121e3fa734e_875x.jpg?v=1528209171',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
