import 'package:ss_menu/models/menu_item_category.dart';
import 'package:ss_menu/models/menu_item.dart';
import 'package:ss_menu/models/menu_item_type.dart';

/// Food menu for SkewerSpot, Jalandhar, India.
var dSSMenu = [
  MenuItemCategory(
    name: 'All-Day Breakfast',
    items: [
      MenuItem(
        name: 'Nutri Kulcha',
        category: '',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Nutri Rice',
        category: '',
        isNonVeg: false,
        price: 100,
      ),
      MenuItem(
        name: 'Masala Idli',
        category: '',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Veggie Poha',
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
    name: 'Waffle',
    items: [
      MenuItem(
        name: 'Classic American',
        category: 'Waffle',
        isNonVeg: false,
        price: 120,
      ),
      MenuItem(
        name: 'Day And Night',
        category: 'Waffle',
        isNonVeg: false,
        price: 140,
      ),
      MenuItem(
        name: 'Merry Berry',
        category: 'Waffle',
        isNonVeg: false,
        price: 140,
      ),
      MenuItem(
        name: 'Orange Passion',
        category: 'Waffle',
        isNonVeg: false,
        price: 150,
      ),
      MenuItem(
        name: 'Oreo Victoria',
        category: 'Waffle',
        isNonVeg: false,
        price: 150,
      ),
      MenuItem(
        name: 'Chocolate Overload',
        category: 'Waffle',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Red Velvet Dream',
        category: 'Waffle',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Nutella Marvel',
        category: 'Waffle',
        isNonVeg: false,
        price: 180,
      ),
      MenuItem(
        name: 'Waffle World Cup',
        category: 'Waffle',
        isNonVeg: false,
        price: 200,
      ),
      MenuItem(
        name: 'Nutella Stick',
        category: 'Waffle',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: 'Small',
            price: 140.0,
          ),
          MenuItemType(
            name: 'Large',
            price: 180.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Molten Core Stick',
        category: 'Waffle',
        isNonVeg: false,
        price: 130,
      ),
      MenuItem(
        name: 'Make Your Own',
        category: 'Waffle',
        isNonVeg: false,
        freeSyrups: 2,
        freeToppings: 2,
        types: [
          MenuItemType(
            name: 'Regular Stick Regular Base',
            price: 100,
          ),
          MenuItemType(
            name: 'Regular Stick Chocolate Base',
            price: 120,
          ),
          MenuItemType(
            name: 'Regular Stick Redvelvet Base',
            price: 130,
          ),
          MenuItemType(
            name: 'Large Stick Regular Base',
            price: 140,
          ),
          MenuItemType(
            name: 'Large Stick Chocolate Base',
            price: 160,
          ),
          MenuItemType(
            name: 'Large Stick Redvelvet Base',
            price: 170,
          ),
          MenuItemType(
            name: 'Classic Regular Base',
            price: 140,
          ),
          MenuItemType(
            name: 'Classic Chocolate Base',
            price: 160,
          ),
          MenuItemType(
            name: 'Classic Redvelvet Base',
            price: 170,
          ),
        ],
        syrups: [
          'Chocolate',
          'White Chocolate',
          'Orange Chocolate',
          'Caramel',
          'Honey',
          'Blueberry Syrup',
          'Strawberry Syrup',
          'Strawberry Chocolate',
          'Maple',
        ],
        toppings: [
          'Almonds',
          'Sprinkles',
          'Oreo Bits',
          'Choco Chips',
          'Brownie Bits',
          'Gems',
          'Marshmallow',
        ],
      )
    ],
  ),
  MenuItemCategory(
    name: 'Pasta',
    items: [
      MenuItem(
        name: 'Red Sauce',
        category: 'Pasta',
        isNonVeg: false,
        price: 160,
      ),
      MenuItem(
        name: 'White Sauce',
        category: 'Pasta',
        isNonVeg: false,
        price: 160,
      ),
      MenuItem(
        name: 'Red and White',
        category: 'Pasta',
        isNonVeg: false,
        price: 170,
      ),
      MenuItem(
        name: 'Cream and Cheese',
        category: 'Pasta',
        isNonVeg: false,
        price: 200,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Vada Pav',
    items: [
      MenuItem(
        name: 'Classic [set of 2]',
        category: 'Vada Pav',
        isNonVeg: false,
        price: 80,
      ),
      MenuItem(
        name: 'Lemon [set of 2]',
        category: 'Vada Pav',
        isNonVeg: false,
        price: 99,
      ),
      MenuItem(
        name: 'Onion [set of 2]',
        category: 'Vada Pav',
        isNonVeg: false,
        price: 99,
      ),
      MenuItem(
        name: 'SkewerSpecial [set of 2]',
        category: 'Vada Pav',
        isNonVeg: false,
        price: 120,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Wrap',
    items: [
      MenuItem(
        name: 'Veggie Delight',
        category: 'Wrap',
        isNonVeg: false,
        price: 100,
      ),
      MenuItem(
        name: 'Paneer Tikka',
        category: 'Wrap',
        isNonVeg: false,
        price: 140,
      ),
      MenuItem(
        name: 'Chilly Paneer',
        category: 'Wrap',
        isNonVeg: false,
        price: 150,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Fries',
    items: [
      MenuItem(
        name: 'French Fries',
        category: '',
        isNonVeg: false,
        price: 70,
      ),
      MenuItem(
        name: 'Potato Tornado',
        category: '',
        isNonVeg: false,
        freeSyrups: 1,
        types: [
          MenuItemType(
            name: 'Regular',
            price: 80,
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
      MenuItem(
        name: 'Potato Twisters',
        category: '',
        isNonVeg: false,
        freeSyrups: 1,
        types: [
          MenuItemType(
            name: 'Regular',
            price: 90,
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
  MenuItemCategory(
    name: 'Combo',
    items: [
      MenuItem(
        name: 'Pasta Meal',
        category: 'Combo',
        isNonVeg: false,
        price: 240,
        inclusions: [
          'Red/White Sauce Pasta',
          'Brownie (small)',
          'Coke',
        ],
      ),
      MenuItem(
        name: 'Wrap Meal',
        category: 'Combo',
        isNonVeg: false,
        price: 250,
        inclusions: [
          'Paneer Tikka Wrap',
          'Potato Twisters',
          'Cappuccino',
        ],
      ),
      MenuItem(
        name: 'Masala Idli Meal',
        category: 'Combo',
        isNonVeg: false,
        price: 150,
        inclusions: [
          'Masala Idli',
          'Brownie (small)',
          'Coke',
        ],
      ),
      MenuItem(
        name: 'Nutri Rice Meal',
        category: 'Combo',
        isNonVeg: false,
        price: 170,
        inclusions: [
          'Nutri Rice',
          'Brownie (small)',
          'Coke',
        ],
      ),
      MenuItem(
        name: 'Nutri Kulcha & Stick Waffle',
        category: 'Combo',
        isNonVeg: false,
        price: 210,
        inclusions: [
          'Nutri Kulcha (2pc)',
          'Regular Stick Waffle',
          'Coke',
        ],
      ),
      MenuItem(
        name: 'Pav Bhaji & Stick Waffle',
        category: 'Combo',
        isNonVeg: false,
        price: 200,
        inclusions: [
          'Pav Bhaji',
          'Regular Stick Waffle',
          'Coke',
        ],
      ),
      MenuItem(
        name: 'Vada Pav & Fries',
        category: 'Combo',
        isNonVeg: false,
        price: 210,
        inclusions: [
          'Nutri Kulcha (2pc)',
          'Regular Stick Waffle',
          'Cappuccino',
        ],
      ),
      MenuItem(
        name: 'Waffle & Fries',
        category: 'Combo',
        isNonVeg: false,
        price: 200,
        inclusions: [
          'Day and Night Classic Waffle',
          'French Fries',
          'Coke',
        ],
      ),
      MenuItem(
        name: 'Waffle & Twisters',
        category: 'Combo',
        isNonVeg: false,
        price: 210,
        inclusions: [
          'Day and Night Classic Waffle',
          'Potato Twisters',
          'Coke',
        ],
      ),
      MenuItem(
        name: 'Waffle & Vada Pav',
        category: 'Combo',
        isNonVeg: false,
        price: 230,
        inclusions: [
          'Day and Night Classic Waffle',
          'Vada Pav (set of 2)',
          'Coke',
        ],
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
        name: 'Ice Cream Scoop',
        category: '',
        isNonVeg: false,
        price: 40,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Beverages',
    items: [
      MenuItem(
        name: 'Bubblegum Shake',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: '350ml',
            price: 140.0,
          ),
          MenuItemType(
            name: '500ml',
            price: 170.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Oreo Shake',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: '350ml',
            price: 130.0,
          ),
          MenuItemType(
            name: '500ml',
            price: 160.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Brownie Shake',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: '350ml',
            price: 130.0,
          ),
          MenuItemType(
            name: '500ml',
            price: 160.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Blueberry Shake',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: '350ml',
            price: 110.0,
          ),
          MenuItemType(
            name: '500ml',
            price: 140.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Strawberry Shake',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: '350ml',
            price: 110.0,
          ),
          MenuItemType(
            name: '500ml',
            price: 140.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Chocolate Shake',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: '350ml',
            price: 110.0,
          ),
          MenuItemType(
            name: '500ml',
            price: 140.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Cold Coffee',
        category: '',
        isNonVeg: false,
        types: [
          MenuItemType(
            name: '350ml',
            price: 100.0,
          ),
          MenuItemType(
            name: '500ml',
            price: 130.0,
          ),
        ],
      ),
      MenuItem(
        name: 'Cappuccino',
        category: '',
        isNonVeg: false,
        price: 80.0,
      ),
      MenuItem(
        name: 'Firangi Pani',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: 'Masala Cola',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: 'Green Apple Mojito',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: 'Spicy Mango Mojito',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: 'Fruit Beer',
        category: '',
        isNonVeg: false,
        price: 60.0,
      ),
      MenuItem(
        name: 'Coke 350ml',
        category: '',
        isNonVeg: false,
        price: 30.0,
      ),
      MenuItem(
        name: 'Sprite 350ml',
        category: '',
        isNonVeg: false,
        price: 30.0,
      ),
      MenuItem(
        name: 'Mineral Water (1 ltr)',
        category: '',
        isNonVeg: false,
        price: 20.0,
      ),
    ],
  ),
  MenuItemCategory(
    name: 'Extra',
    items: [
      MenuItem(
        name: 'Rs. 5',
        category: '',
        isNonVeg: false,
        price: 5.0,
      ),
      MenuItem(
        name: 'Rs. 10',
        category: '',
        isNonVeg: false,
        price: 10.0,
      ),
      MenuItem(
        name: 'Rs. 20',
        category: '',
        isNonVeg: false,
        price: 20.0,
      ),
      MenuItem(
        name: 'Rs. 30',
        category: '',
        isNonVeg: false,
        price: 30.0,
      ),
      MenuItem(
        name: 'Rs. 40',
        category: '',
        isNonVeg: false,
        price: 40.0,
      ),
      MenuItem(
        name: 'Rs. 50',
        category: '',
        isNonVeg: false,
        price: 50.0,
      ),
      MenuItem(
        name: 'Rs. 60',
        category: '',
        isNonVeg: false,
        price: 60.0,
      ),
      MenuItem(
        name: 'Rs. 70',
        category: '',
        isNonVeg: false,
        price: 70.0,
      ),
      MenuItem(
        name: 'Rs. 80',
        category: '',
        isNonVeg: false,
        price: 80.0,
      ),
      MenuItem(
        name: 'Rs. 90',
        category: '',
        isNonVeg: false,
        price: 90.0,
      ),
      MenuItem(
        name: 'Rs. 100',
        category: '',
        isNonVeg: false,
        price: 100.0,
      ),
    ],
  ),
];
