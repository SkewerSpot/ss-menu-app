import 'package:ss_menu/models/menu_item_category.dart';
import 'package:ss_menu/models/menu_item.dart';
import 'package:ss_menu/models/menu_item_type.dart';

var dSSMenu = [
  MenuItemCategory(
    name: 'All-Day Breakfast',
    items: [
      MenuItem(
        name: 'Nutri Kulcha [2pc]',
        category: 'ADB',
        isNonVeg: false,
        price: 100,
      ),
      MenuItem(
        name: 'Palak Chaamp Kulcha [2pc]',
        category: 'ADB',
        isNonVeg: false,
        price: 150,
      ),
      MenuItem(
        name: 'Nutri Rice',
        category: 'ADB',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Masala Idli',
        category: 'ADB',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Veggie Poha',
        category: 'ADB',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Popular Pav Bhaji',
        category: 'ADB',
        isNonVeg: false,
        price: 90,
      ),
      MenuItem(
        name: 'Cheese Pav Bhaji',
        category: 'ADB',
        isNonVeg: false,
        price: 120,
      ),
      MenuItem(
        name: 'Chinese Idli',
        category: 'ADB',
        isNonVeg: false,
        price: 140,
      ),
      MenuItem(
        name: 'Cheesy Grilled S/W [4pc]',
        category: 'ADB',
        isNonVeg: false,
        price: 140,
      ),
      MenuItem(
        name: 'Paneer Grilled S/W [4pc]',
        category: 'ADB',
        isNonVeg: false,
        price: 160,
      ),
      MenuItem(
        name: 'Veggie Grilled Marine',
        category: 'ADB',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Paneer Grilled Marine',
        category: 'ADB',
        isNonVeg: false,
        price: 90,
      ),
      MenuItem(
        name: 'Extra Pav',
        category: 'ADB',
        isNonVeg: false,
        price: 10,
      ),
      MenuItem(
        name: 'Extra Butter Pav',
        category: 'ADB',
        isNonVeg: false,
        price: 15,
      ),
      MenuItem(
        name: 'Extra Kulcha',
        category: 'ADB',
        isNonVeg: false,
        price: 10,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Fries',
    items: [
      MenuItem(
        name: 'Potato Tornado',
        category: 'Fries',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Regular',
            price: 70,
          ),
        ],
        syrups: [
          'Cheese',
          'Garlic Chilly',
          'Mint Mayonnaise',
          'Sweet Onion',
          'Southwest',
          'Barbeque',
          'Sweet Chilly',
          'Peri-peri',
        ],
      ),
    ],
  ),
];
