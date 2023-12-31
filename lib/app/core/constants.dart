import 'dart:math';

abstract class Constants {
  static const defaultBoolBox = 'bool_app_box';
  static const defaultPadding = 16.0;
}

abstract class ImagesPath {
  static const _folder = 'assets/img';
  static const mainBackground = '$_folder/launch_bg.png';
  static const scaffoldBackground = '$_folder/bg.png';
  static const onBoardMain = '$_folder/onboard/main.png';

  static const _categoryFolder = '$_folder/categories';
  static const appetizersPicture = '$_categoryFolder/apper.png';
  static const sushiPicture = '$_categoryFolder/sushi.png';
  static const ricePicture = '$_categoryFolder/rice.png';
  static const soupPicture = '$_categoryFolder/soup.png';
  static const dessertPicture = '$_categoryFolder/dessert.png';

  static const _productFolder = '$_folder/products';
  static getProductPicture(int id) {
    if (id < 1 || id > 30) id = Random().nextInt(30) + 1;
    return "$_productFolder/$id.png";
  }
}

abstract class IconsPath {
  static const _path = 'assets/icons';
  static const heart = '$_path/heart.svg';
  static const search = '$_path/search.svg';
  static const grid = '$_path/grid.svg';
  static const shopping = '$_path/shopping.svg';
  static const settings = '$_path/settings.svg';
  static const qr = '$_path/qr.svg';
}
