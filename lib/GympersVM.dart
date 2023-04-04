import 'package:gympers_app_dynamic/GympersModel.dart';

class GympersVM extends GympersModel {
  GympersVM() {
    setBrands(collectionOfBrands: ["Nike", "Adidas", "Puma", "All"]);
    setProducts(collectionOfData: [
      {
        "ImageLocation": "lib/Helpers/Resources/asset/Images/image1.png",
        "brand": "Nike",
        "category": "Man's T-Shirts",
      },
      {
        "ImageLocation": "lib/Helpers/Resources/asset/Images/image2.png",
        "brand": "Nike",
        "category": "Man's T-Shirts",
      },
      {
        "ImageLocation": "lib/Helpers/Resources/asset/Images/image3.png",
        "brand": "Adidas",
        "category": "Man's T-Shirts",
      },
      {
        "ImageLocation": "lib/Helpers/Resources/asset/Images/image4.png",
        "brand": "Puma",
        "category": "Man's T-Shirts",
      }
    ]);
    setTempData(collectionOfTempData: collectionOfData);
    // setTempData(collectionOfTempData: collectionOfData);
  }
  void filterFunction(int index) {
    
    setProducts(collectionOfData: []);

    for (var element in collectionOfTempData) {

      if (collectionOfBrands[index] == element['brand']) {
        collectionOfData.add(element);
      }
      if (collectionOfBrands[index] == 'All') {
        setProducts(collectionOfData: collectionOfTempData);
      }
      
    }
    // setProducts(collectionOfData: collectionOfTempData);
    // for (var i = 0; i < collectionOfTempData.length; i++) {
    //   print(collectionOfTempData);
    //   if (collectionOfBrands[index] == collectionOfTempData[i]['brand']) {
    //     collectionOfData.add(collectionOfTempData[i]);
    //     print(collectionOfData);
    //     // setProducts(
    //     //     collectionOfData: collectionOfData.add(collectionOfTempData[i]));
    //   } else {
    //     setProducts(collectionOfData: collectionOfTempData);
    //   }
    // }
  }
}
// lib/Helpers/Resources/asset/Images/
