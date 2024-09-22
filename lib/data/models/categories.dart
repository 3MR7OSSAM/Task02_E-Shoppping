import 'package:task02/core/theme/manger/assets_manger.dart';

class Category {
  String name;
  String icon;
  Category(this.name, this.icon);
}

List<Category> categories =[
  Category('Fashion', AssetsManger.fashionIcon),
  Category('School', AssetsManger.schoolIcon),
  Category('Sports',AssetsManger.sportsIcon),
  Category('Electronics', AssetsManger.electronicsIcon),
  Category('All', AssetsManger.allIcon),
];