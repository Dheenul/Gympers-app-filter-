import 'package:flutter/material.dart';
import 'GympersVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class GympersView extends StatelessWidget {
  GympersView({super.key});
  GympersVM _gympersVM = GympersVM();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: const Color(0xff0D031B),
      body: SafeArea(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "GYMPERS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 45,
              ),
              SizedBox(
                  height: 50,
                  width: 250,
                  child: Observer(builder: (context) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _gympersVM.collectionOfBrands.length,
                        itemBuilder: (BuildContext context, int index) {
                          return MaterialButton(
                            onPressed: () {
                              _gympersVM.filterFunction(index);
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: _gympersVM.collectionOfBrands[index] ==
                                      "Nike"
                                  ? Image.asset(
                                      "lib/Helpers/Resources/asset/Images/nike.png",
                                      height: 30,
                                      width: 30,
                                    )
                                  : _gympersVM.collectionOfBrands[index] ==
                                          "Adidas"
                                      ? Image.asset(
                                          "lib/Helpers/Resources/asset/Images/adidas.png",
                                          height: 21,
                                          width: 30,
                                        )
                                      : _gympersVM.collectionOfBrands[index] ==
                                              "Puma"
                                          ? Image.asset(
                                              "lib/Helpers/Resources/asset/Images/puma1.png",
                                              height: 18,
                                              width: 35,
                                            )
                                          : Image.asset(
                                              "lib/Helpers/Resources/asset/Images/all.png",
                                              height: 30,
                                              width: 30,
                                            ),
                            ),
                          );
                        });
                  })),
              const SizedBox(
                height: 50,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "T-Shirts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 520,
                width: 412,
                child: Observer(builder: (context) {
                  return GridView.builder(
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.65,
                        crossAxisCount: 2,
                        crossAxisSpacing: 56,
                        mainAxisSpacing: 25,
                      ),
                      itemCount: _gympersVM.collectionOfData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                      image: AssetImage(
                                          _gympersVM.collectionOfData[index]
                                              ['ImageLocation']))),
                              height: 146,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: const Color(0xff56505F),
                                  borderRadius: BorderRadius.circular(19)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, bottom: 8, top: 7),
                              child: Text(
                                _gympersVM.collectionOfData[index]['brand'],
                                style: const TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                  _gympersVM.collectionOfData[index]['category'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ),
                          ],
                        );
                      });
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      )),
    ));
  }
}
