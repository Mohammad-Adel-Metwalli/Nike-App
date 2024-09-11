import 'package:nike_app/Feature/Home/Data/Repositories/Models/shoe_model.dart';

abstract class AssetsData
{
  static List<String> categories = ['All Shoes', 'Outdoor', 'Tennis'];
  static Map<int, ShoeModel> allShoes = {
    0: ShoeModel(shoeName: 'Nike Air Max White', shoeImage: 'Assets/Images/nike-ah8050110-air_max_270-1-e_prev_ui 2.png', shoePrice: 300),
    1: ShoeModel(shoeName: 'Nike Purple Shoe', shoeImage: 'Assets/Images/Nike-Zoom-Moc-The-10th_1_.png', shoePrice: 340),
    2: ShoeModel(shoeName: 'Nike Air Max Blue', shoeImage: 'Assets/Images/nike-zoom-winflo-3-831561-001-mens-running-shoes-11550187236tiyyje6l87_prev_ui 3.png', shoePrice: 350),
    3: ShoeModel(shoeName: 'Nike White-Orange Shoe', shoeImage: 'Assets/Images/pngaaa.png', shoePrice: 360),
    4: ShoeModel(shoeName: 'Nike Jordan', shoeImage: 'Assets/Images/PngItem_5550642 (2) 1.png', shoePrice: 370),
  };

  static List<int> favouriteShoes = [], cartList = [];
}