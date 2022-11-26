import 'package:aladdin/src/models/home_product_models.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<HomePorductmodel> productList = [
    HomePorductmodel(
        name: "Lip Colour & Care",
        image: "assets/icons/NoPath - Copy (13).png",
        price: "49.00",
        rating: "4.5"),
    HomePorductmodel(
        name: "Focallure",
        image: "assets/icons/NoPath - Copy (14).png",
        price: "20.48",
        rating: "4.5"),
    HomePorductmodel(
        name: "Audio Tronsmart",
        image: "assets/icons/NoPath - Copy (15).png",
        price: "20.48",
        rating: "4.5"),
    HomePorductmodel(
        name: "Sports Nurtrition",
        image: "assets/icons/NoPath - Copy (20).png",
        price: "11.00",
        rating: "4.5"),
    HomePorductmodel(
        name: "Ankle Boots",
        image: "assets/icons/women_shoes_PNG7464.png",
        price: "19.00",
        rating: "4.5"),
    HomePorductmodel(
        name: "Backpack",
        image: "assets/icons/backpack_PNG6354.png",
        price: "15.56",
        rating: "4.5"),
    HomePorductmodel(
        name: "Red Scarf",
        image: "assets/icons/scarf_PNG48.png",
        price: "06.76",
        rating: "4.5"),
    HomePorductmodel(
        name: "Nutry choice",
        image: "assets/icons/NoPath - Copy (16).png",
        price: "06.76",
        rating: "4.5"),
  ];

  List<HomePorductmodel> paryaerProductList = [
    HomePorductmodel(
        name: "MECCA COLLECTION – 164",
        image: "assets/images/prayer_img (1).png",
        price: "187.00",
        subtitle: "Fashion, Prayer Sets & Mats",
        rating: "4.5"),
    HomePorductmodel(
        name: "MECCA COLLECTION – 023",
        image: "assets/images/prayer_img (2).png",
        price: "187.00",
        subtitle: "Fashion, Prayer Sets & Mats",
        rating: "4.5"),
    HomePorductmodel(
        name: "MECCA COLLECTION – 022",
        image: "assets/images/prayer_img (3).png",
        price: "167.00",
        subtitle: "Fashion, Prayer Sets & Mats",
        rating: "4.5"),
    HomePorductmodel(
        name: "MECCA COLLECTION – 067",
        image: "assets/images/prayer_img (4).png",
        price: "167.00",
        subtitle: "Fashion, Prayer Sets & Mats",
        rating: "4.5"),
    HomePorductmodel(
        name: "MECCA COLLECTION – 095",
        image: "assets/images/prayer_img (5).png",
        subtitle: "Fashion, Prayer Sets & Mats",
        price: "167.00",
        rating: "4.5"),
    HomePorductmodel(
        name: "MECCA COLLECTION –0395",
        image: "assets/images/prayer_img (6).png",
        subtitle: "Fashion, Prayer Sets & Mats",
        price: "256.00",
        rating: "4.5"),
  ];

  List<HomePorductmodel> healthBeatyList = [
    HomePorductmodel(
        name: "Spices/ Condiments",
        image: "assets/images/health_img (1).png",
        price: "89.00",
        subtitle: "Cleanser & Soap, Health & Beauty",
        rating: "4.5"),
    HomePorductmodel(
        name: "Aishitoto Magic Facial Soap",
        image: "assets/images/health_img (2).png",
        price: "87.00",
        subtitle: "Cleanser & Soap, Health & Beauty",
        rating: "4.5"),
    HomePorductmodel(
        name: "Aurora Facial Cleanser",
        image: "assets/images/health_img (3).png",
        price: "97.00",
        subtitle: "Cleanser & Soap, Health & Beauty",
        rating: "4.5"),
    HomePorductmodel(
        name: "CERAVE Hydrating Facial Clean",
        image: "assets/images/health_img (4).png",
        price: "167.00",
        subtitle: "Cleanser & Soap, Health & Beauty",
        rating: "4.5"),
    HomePorductmodel(
        name: "CERAVE Hydrating Facial Clean",
        image: "assets/images/health_img (5).png",
        subtitle: "Cleanser & Soap, Health & Beauty",
        price: "167.00",
        rating: "4.5"),
    HomePorductmodel(
        name: "CERAVE Hydrating Facial Clean",
        image: "assets/images/health_img (6).png",
        subtitle: "Cleanser & Soap, Health & Beauty",
        price: "256.00",
        rating: "4.5"),
  ];

  List<HomePorductmodel> foodBeveragesList = [
    HomePorductmodel(
        name: "50% OFF – Organic Care2u",
        image: "assets/images/food_img (1).png",
        price: "21.00",
        subtitle: "Healthy Food",
        rating: "4.5"),
    HomePorductmodel(
        name: "500g Kuih Bangkit Coconut Cook",
        image: "assets/images/food_img (2).png",
        price: "31.00",
        subtitle: "Healthy Food",
        rating: "4.5"),
    HomePorductmodel(
        name: "[BOX] SERDA Instant Noodles To",
        image: "assets/images/food_img (3).png",
        price: "37.00",
        subtitle: "Healthy Food",
        rating: "4.5"),
    HomePorductmodel(
        name: "[BOX] SERDA Instant Noodles To",
        image: "assets/images/food_img (4).png",
        price: "38.00",
        subtitle: "Healthy Food",
        rating: "4.5"),
    HomePorductmodel(
        name: "50% OFF – Organic Care2u",
        image: "assets/images/food_img (5).png",
        subtitle: "Healthy Food",
        price: "39.00",
        rating: "4.5"),
    HomePorductmodel(
        name: "[BOX] SERDA Instant Noodles To",
        image: "assets/images/food_img (6).png",
        subtitle: "Healthy Food",
        price: "41.00",
        rating: "4.5"),
  ];

  List<HomePorductmodel> lifeStyleList = [
    HomePorductmodel(
        name: "Aichan",
        image: "assets/images/lifestyle_img (1).png",
        price: "32.00",
        subtitle: "Gardening Tools",
        rating: "4.5"),
    HomePorductmodel(
        name: "ELIANWARE 500/1000ml Water Spr",
        image: "assets/images/lifestyle_img (2).png",
        price: "98.00",
        subtitle: "Gardening Tools",
        rating: "4.5"),
    HomePorductmodel(
        name: "INPLUS 8/9/11 Inch Plastic Squ",
        image: "assets/images/lifestyle_img (3).png",
        price: "75.00",
        subtitle: "Gardening Tools",
        rating: "4.5"),
    HomePorductmodel(
        name: "INPLUS OFFER PACK 1/2Pcs 10/12",
        image: "assets/images/lifestyle_img (4).png",
        price: "38.00",
        subtitle: "Gardening Tools",
        rating: "4.5"),
    HomePorductmodel(
        name: "Aichan",
        image: "assets/images/lifestyle_img (5).png",
        subtitle: "Gardening Tools",
        price: "39.00",
        rating: "4.5"),
    HomePorductmodel(
        name: "ELIANWARE 500/1000ml Water Spr",
        image: "assets/images/lifestyle_img (6).png",
        subtitle: "Gardening Tools",
        price: "41.00",
        rating: "4.5"),
  ];
}
