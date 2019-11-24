import 'package:ss_menu/models/menu_item_category.dart';
import 'package:ss_menu/models/menu_item.dart';
import 'package:ss_menu/models/menu_item_type.dart';

/// Food menu for The Foodie Kitchen, Jalandhar, India.
var dTFKMenu = [
  MenuItemCategory(
    name: 'Roti Combos',
    items: [
      MenuItem(
        name: 'Chana Masala Roti Box',
        category: '',
        isNonVeg: false,
        price: 130,
      ),
      MenuItem(
        name: 'Dal Makhani Roti Box',
        category: '',
        isNonVeg: false,
        price: 130,
      ),
      MenuItem(
        name: 'Dal Makhani Parantha Box',
        category: '',
        isNonVeg: false,
        price: 150,
      ),
      MenuItem(
        name: 'Dal Makhani Naan Box',
        category: '',
        isNonVeg: false,
        price: 150,
      ),
      MenuItem(
        name: 'Mushroom Masala Roti Box',
        category: '',
        isNonVeg: false,
        price: 150,
      ),
      MenuItem(
        name: 'Palak Paneer Parantha Box',
        category: '',
        isNonVeg: false,
        price: 160,
      ),
      MenuItem(
        name: 'Shahi Paneer Naan Box',
        category: '',
        isNonVeg: false,
        price: 160,
      ),
      MenuItem(
        name: 'Kadhai Paneer Naan Box',
        category: '',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Malai Kofta Parantha Box',
        category: '',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Palak Chana Naan Box',
        category: '',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Tawa Chaamp Naan Box',
        category: '',
        isNonVeg: false,
        price: 170,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Rice Combos',
    items: [
      MenuItem(
        name: 'Nutri Rice Box',
        category: '',
        isNonVeg: false,
        price: 100,
      ),
      MenuItem(
        name: 'Veg Pulao Box',
        category: '',
        isNonVeg: false,
        price: 130,
      ),
      MenuItem(
        name: 'Dal Makhani Rice Box',
        category: '',
        isNonVeg: false,
        price: 130,
      ),
      MenuItem(
        name: 'Choley Rice Box',
        category: '',
        isNonVeg: false,
        price: 130,
      ),
      MenuItem(
        name: 'Rajma Rice Box',
        category: '',
        isNonVeg: false,
        price: 130,
      ),
      MenuItem(
        name: 'Kadhi Pakoda Rice Box',
        category: '',
        isNonVeg: false,
        price: 130,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Thali',
    items: [
      MenuItem(
        name: 'Medium Hunger',
        category: 'Thali',
        isNonVeg: false,
        price: 190.0,
        inclusions: [
          'Dal Makhani',
          'Shahi Paneer',
          'Mix Veg',
          'Raita',
          '2 Tandoori Roti',
          'Rice',
          'Salad',
          'Brownie',
        ],
      ),
      MenuItem(
        name: 'Big Hunger',
        category: 'Thali',
        isNonVeg: false,
        price: 240.0,
        inclusions: [
          'Dal Makhani',
          'Shahi Paneer',
          'Mix Veg',
          'Pulao',
          'Raita',
          '1 Lachha Parantha',
          '1 Butter Naan',
          'Salad',
          'Brownie',
        ],
      ),
      MenuItem(
        name: 'Monster Hunger',
        category: 'Thali',
        isNonVeg: false,
        price: 300.0,
        inclusions: [
          'Dal Makhani',
          'Paneer Butter Masala',
          'Chana Masala',
          'Mix Veg',
          'Pulao',
          'Raita',
          '2 Lachha Parantha',
          '2 Butter Naan',
          'Salad',
          'Brownie',
        ],
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Chinese Combos',
    items: [
      MenuItem(
        name: 'Fried Rice Manchurian Box',
        category: '',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Fried Rice Chilli Paneer Box',
        category: '',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Chowmein Manchurian Box',
        category: '',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Chowmein Chilli Paneer Box',
        category: '',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Garlic Noodles Manchurian Box',
        category: '',
        isNonVeg: false,
        price: 180,
      ),
      MenuItem(
        name: 'Garlic Noodles Chilli Paneer Box',
        category: '',
        isNonVeg: false,
        price: 180,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'All-Day Meals',
    items: [
      MenuItem(
        name: 'Bheeja Kulcha (1pc)',
        category: '',
        isNonVeg: false,
        price: 50,
      ),
      MenuItem(
        name: 'Bheeja Kulcha (2pc)',
        category: '',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Nutri Kulcha',
        category: '',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Choley Bhature',
        category: '',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Aloo Naan Plate',
        category: '',
        isNonVeg: false,
        price: 60,
      ),
      MenuItem(
        name: 'Gobi Naan Plate',
        category: '',
        isNonVeg: false,
        price: 70,
      ),
      MenuItem(
        name: 'Mix Naan Plate',
        category: '',
        isNonVeg: false,
        price: 70,
      ),
      MenuItem(
        name: 'Paneer Naan Plate',
        category: '',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Extra Pav',
        category: '',
        isNonVeg: false,
        price: 10,
      ),
      MenuItem(
        name: 'Extra Butter Pav',
        category: '',
        isNonVeg: false,
        price: 15,
      ),
      MenuItem(
        name: 'Extra Kulcha',
        category: '',
        isNonVeg: false,
        price: 10,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Main Course (Indian)',
    items: [
      MenuItem(
        name: 'Dal Makhani',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 100.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 170.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Dal Tadaka (Yellow)',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 90.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 150.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Shahi Paneer',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 140.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 220.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Palak Paneer',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 140.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 220.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Kadhai Paneer',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 140.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 220.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Paneer Butter Masala',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 160.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 240.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Paneer Bhurji',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 160.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 240.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Mushroom Masala',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 160.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 240.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Palak Mushroom',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 100.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 180.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Malai Kofta',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 160.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 240.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Palak Kofta',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 100.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 180.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Chana Masala',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 90.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 160.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Rajma',
        category: '',
        isNonVeg: false,
        price: 160.0,
      ),
      MenuItem(
        name: 'Palak Corn',
        category: '',
        isNonVeg: false,
        price: 180.0,
      ),
      MenuItem(
        name: 'Kadhi Pakoda',
        category: '',
        isNonVeg: false,
        price: 160.0,
      ),
      MenuItem(
        name: 'Mix Veg',
        category: '',
        isNonVeg: false,
        price: 160.0,
      ),
      MenuItem(
        name: 'Tawa Chaamp',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 120.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 200.0,
          ),
        ],
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Main Course (Chinese)',
    items: [
      MenuItem(
        name: 'Chowmein',
        category: '',
        isNonVeg: false,
        price: 140.0,
      ),
      MenuItem(
        name: 'Fried Rice',
        category: '',
        isNonVeg: false,
        price: 140.0,
      ),
      MenuItem(
        name: 'Garlic Noodles',
        category: '',
        isNonVeg: false,
        price: 150.0,
      ),
      MenuItem(
        name: 'Chilli Garlic Noodles',
        category: '',
        isNonVeg: false,
        price: 160.0,
      ),
      MenuItem(
        name: 'Chilli Chana',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 130.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 220.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Chilli Paneer (Gravy)',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 130.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 220.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Chilli Paneer (Dry)',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 160.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 250.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Manchurian (Gravy)',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 130.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 220.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Manchurian (Dry)',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 160.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 250.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Honey Chilli Potato',
        category: '',
        isNonVeg: false,
        price: 150.0,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Snacks',
    items: [
      MenuItem(
        name: 'Masala Idli',
        category: '',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Popular Pav Bhaji',
        category: '',
        isNonVeg: false,
        price: 90,
      ),
      MenuItem(
        name: 'Cheesy Grilled S/W [4pc]',
        category: '',
        isNonVeg: false,
        price: 140,
      ),
      MenuItem(
        name: 'Paneer Grilled S/W [4pc]',
        category: '',
        isNonVeg: false,
        price: 160,
      ),
      MenuItem(
        name: 'Paneer Tikka',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 100.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 180.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Malai Chaap',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 90.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 160.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Afghani Chaap',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Half',
            price: 90.0,
          ),
          MenuItemType(
            name: 'Full',
            price: 160.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Veggie Kathi Roll',
        category: '',
        isNonVeg: false,
        price: 100.0,
      ),
      MenuItem(
        name: 'Paneer Tikka Kathi Roll',
        category: '',
        isNonVeg: false,
        price: 140.0,
      ),
      MenuItem(
        name: 'Chilli Paneer Kathi Roll',
        category: '',
        isNonVeg: false,
        price: 150.0,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Desserts',
    items: [
      MenuItem(
        name: 'Brownie',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Small',
            price: 60.0,
          ),
          MenuItemType(
            name: 'Large',
            price: 120.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Brownie Ice Cream',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Small',
            price: 100.0,
          ),
          MenuItemType(
            name: 'Large',
            price: 160.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Fudge Stick Waffle',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Regular',
            price: 100.0,
          ),
          MenuItemType(
            name: 'Large',
            price: 160.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Fudge Classic Waffle',
        category: '',
        isNonVeg: false,
        price: 160.0,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Beverages',
    items: [
      MenuItem(
        name: '350ml Fruit Beer',
        category: '',
        isNonVeg: false,
        price: 60.0,
      ),
      MenuItem(
        name: '350ml Firangi Pani',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: '350ml Masala Cola',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: '350ml Green Apple Mojito',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: '350ml Spicy Mango Mojito',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: '350ml Blueberry Shake',
        category: '',
        isNonVeg: false,
        price: 110.0,
      ),
      MenuItem(
        name: '350ml Chocolate Shake',
        category: '',
        isNonVeg: false,
        price: 110.0,
      ),
      MenuItem(
        name: '350ml Strawberry Shake',
        category: '',
        isNonVeg: false,
        price: 110.0,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Breads',
    items: [
      MenuItem(
        name: 'Tandoor Roti',
        category: '',
        isNonVeg: false,
        price: 10.0,
      ),
      MenuItem(
        name: 'Butter Tandoor Roti',
        category: '',
        isNonVeg: false,
        price: 15.0,
      ),
      MenuItem(
        name: 'Lachha Prantha',
        category: '',
        isNonVeg: false,
        price: 30.0,
      ),
      MenuItem(
        name: 'Butter Naan',
        category: '',
        isNonVeg: false,
        price: 35.0,
      ),
      MenuItem(
        name: 'Garlic Naan',
        category: '',
        isNonVeg: false,
        price: 45.0,
      ),
      MenuItem(
        name: 'Missi Roti',
        category: '',
        isNonVeg: false,
        price: 30.0,
      ),
      MenuItem(
        name: 'Paneer Naan Gravy',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Rice',
    items: [
      MenuItem(
        name: 'Plain Rice',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: 'Jeera Rice',
        category: '',
        isNonVeg: false,
        price: 110.0,
      ),
      MenuItem(
        name: 'Veg Pulao',
        category: '',
        isNonVeg: false,
        price: 140.0,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Raita',
    items: [
      MenuItem(
        name: 'Mix Veg',
        category: 'Raita',
        isNonVeg: false,
        price: 60.0,
      ),
      MenuItem(
        name: 'Boondi',
        category: 'Raita',
        isNonVeg: false,
        price: 60.0,
      ),
      MenuItem(
        name: 'Aloo Mint',
        category: 'Raita',
        isNonVeg: false,
        price: 60.0,
      ),
    ],
  ),
];
