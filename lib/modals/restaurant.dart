import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/modals/cart_item.dart';
import 'package:food_delivery/modals/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burger
    Food(
      description:
          "A jiucy meat patty with melted cheese, lettuce, tomato, and a hint of onion",
      imagePath: "lib/food/burger/Burger1.jpg",
      name: "Classic Cheeseburger",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Oregano Sachet", price: 2),
        Addon(name: "Chilly Flakes Sachet", price: 2),
        Addon(name: "Tomato Sachet", price: 2),
      ],
    ),

    Food(
      description: "Indian style burger loaded with delicious masala chaap.",
      imagePath: "lib/food/burger/Burger2.jpg",
      name: "Masala Burger",
      price: 140,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Oregano Sachet", price: 0.99),
        Addon(name: "Chilly flakes Sachet", price: 1.99),
        Addon(name: "Tomato Sachet", price: 1.99),
      ],
    ),

    Food(
      description:
          "Burger,Aloo patty, Onion & Tomato cheese & cheese slice, spl sauce Herbs & spices.",
      imagePath: "lib/food/burger/Burger3.jpg",
      name: "Veg Cheese Burger",
      price: 120,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Oregano Sachet", price: 0.99),
        Addon(name: "Chilly flakes Sachet", price: 1.99),
        Addon(name: "Tomato Sachet", price: 1.99),
      ],
    ),

    Food(
      description:
          "Vegetable patty, spicy sauce, Jalapeno Onion & tomato Herbs & spices.",
      imagePath: "lib/food/burger/Burger4.jpg",
      name: "Jalapeno Burger",
      price: 130,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Oregano Sachet", price: 0.99),
        Addon(name: "Chilly flakes Sachet", price: 1.99),
        Addon(name: "Tomato Sachet", price: 1.99),
      ],
    ),

    Food(
      description:
          "A delightfully flavour packed chaap tossed with veggies and delectable masalas and then grilled with butter.",
      imagePath: "lib/food/burger/Burger5.jpg",
      name: "Chilly Chaap Burger",
      price: 140,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Oregano Sachet", price: 0.99),
        Addon(name: "Chilly flakes Sachet", price: 1.99),
        Addon(name: "Tomato Sachet", price: 1.99),
      ],
    ),

    // salads
    Food(
      description:
          "A Greek based salad with wholesome, nutritious ingredients like cherry tomatoes, colouful bell peppers, diced cucumber with and herbed paneer dressed with kasundi vinaigrette. A must try! Allergen Information-Contains Dairy & Nuts.",
      imagePath: "lib/food/salads/Salad1.jpg",
      name: "Greek Paneer Salad",
      price: 369,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Hummus", price: 39),
        Addon(name: "Tossed Corn ", price: 19),
        Addon(name: "Pomegranate", price: 41),
        Addon(name: "Protein Paneer", price: 49),
        Addon(name: "Grated Feta Cheese", price: 39),
      ],
    ),

    Food(
      description:
          "Prepare the healthy salad along with fried potato and veggie petty with extra veggies and sauces of your choice.",
      imagePath: "lib/food/salads/Salad2.jpg",
      name: "Crumbled Potato Petty Salad",
      price: 279,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Hummus", price: 39),
        Addon(name: "Lettuce ", price: 19),
        Addon(name: "Capsicum", price: 41),
        Addon(name: "Protein Paneer", price: 49),
        Addon(name: "Grated Feta Cheese", price: 39),
      ],
    ),

    Food(
      description:
          "Prepare the healthy salad with veggies and sauces of your choice.",
      imagePath: "lib/food/salads/Salad3.jpg",
      name: "Delight Veggie Salad",
      price: 259,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Tomato", price: 39),
        Addon(name: "Tossed Corn ", price: 19),
        Addon(name: "Pomegranate", price: 41),
        Addon(name: "Protein Paneer", price: 49),
        Addon(name: "Onion", price: 39),
      ],
    ),

    Food(
      description:
          "Combination of fried paneer pieces along with fresh indian and exotic fresh indian and exotic veggie including some real spices and sauces for delicious taste.",
      imagePath: "lib/food/salads/Salad4.jpg",
      name: "Paneer Crust Salad",
      price: 289,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Tomato", price: 39),
        Addon(name: "Tossed Corn ", price: 19),
        Addon(name: "Pomegranate", price: 41),
        Addon(name: "Protein Paneer", price: 49),
        Addon(name: "Onion", price: 39),
      ],
    ),

    // sides
    Food(
      description:
          "Baked to perfection. Your perfect Pizza partner! Tastes best with dip",
      imagePath: "lib/food/sides/Side1.jpg",
      name: "Cheesy Garlic Bread",
      price: 129,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Jalapeno Dip", price: 30),
        Addon(name: "Peri Peri Dip", price: 30),
        Addon(name: "Cheese Dip", price: 40),
      ],
    ),

    Food(
      description:
          "Thick-cut, golden perfection made from sweet, crisp onions, lightly battered and seasoned for a satisfying crunch.",
      imagePath: "lib/food/sides/Side2.jpg",
      name: "Onion Rings",
      price: 125,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Jalapeno Dip", price: 30),
        Addon(name: "Peri Peri Dip", price: 30),
        Addon(name: "Cheese Dip", price: 40),
      ],
    ),

    Food(
      description:
          "Deep-fried, stuffed rolls packed with seasoned assorted veggies.",
      imagePath: "lib/food/sides/Side3.jpg",
      name: "Veg Spring Roll",
      price: 200,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Tomato Dip", price: 30),
        Addon(name: "Cheese Dip", price: 40),
      ],
    ),

    Food(
      description: "Macaroni and cheese sauce, cheddar sauce",
      imagePath: "lib/food/sides/Side4.jpg",
      name: "Mac & Cheese ",
      price: 260,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Chicken ", price: 50),
        Addon(name: "Mushroom", price: 40),
        Addon(name: "Cheese", price: 40),
      ],
    ),

    Food(
      description:
          "There's nothing like a real classic: try these straight cut fries and see why sometimes there's just not substitued",
      imagePath: "lib/food/sides/Side5.jpg",
      name: "French Fries",
      price: 90,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Chipotle seasoning", price: 30),
        Addon(name: "Peri Peri seasoning", price: 30),
      ],
    ),

    // desserts
    Food(
      description:
          "Cheesecake jar filled with layerss of cream cheese, mascarpone and blueberry compote.",
      imagePath: "lib/food/desserts/Dessert1.jpg",
      name: "Blueberry Cheese Cake",
      price: 194.92,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cappuccino", price: 140),
        Addon(name: "Hot Chocolate", price: 180),
        Addon(name: "Latte", price: 140),
        Addon(name: "Valencia Orange Juice", price: 161),
      ],
    ),

    Food(
      description:
          "Moist & fluffy vanilla cupcake filled with blueberry jam & tapped with blueberry butter cream frosting.",
      imagePath: "lib/food/desserts/Dessert2.jpg",
      name: "Vanillla & Blueberry Cupcake",
      price: 120,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Center Filled Chocolate Cookies", price: 89),
        Addon(name: "Choco Almonds", price: 129),
        Addon(name: "Velvety Chocolate", price: 89),
        Addon(name: "Mixed Cookies", price: 160),
      ],
    ),

    Food(
      description:
          "Nothing tops a berry berry good ice cream and this Strawberry one is pure heaven! Dig into this fruity, cream Strawberry ice-cream with real Strawberry chunks.",
      imagePath: "lib/food/desserts/Dessert3.jpg",
      name: "Strawberry Icecream",
      price: 94.86,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cappuccino", price: 140),
        Addon(name: "Hot Chocolate", price: 180),
        Addon(name: "Latte", price: 140),
        Addon(name: "Valencia Orange Juice", price: 161),
      ],
    ),

    Food(
      description:
          "Donuts will have a smooth and velvety texture and complementing sweet icing to add the best flavours to the delight.",
      imagePath: "lib/food/desserts/Dessert4.jpg",
      name: "Chocolate Donuts",
      price: 180,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Cappuccino", price: 140),
        Addon(name: "Hot Chocolate", price: 180),
        Addon(name: "Latte", price: 140),
        Addon(name: "Valencia Orange Juice", price: 161),
      ],
    ),

    //drinks
    Food(
      description:
          "A simple drink with Lemon, mint leaves and water to lighten your mood and refresh you up",
      imagePath: "lib/food/drinks/Drink2.jpg",
      name: "Fresh Lime Mint Water",
      price: 130,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavour ", price: 60),
        Addon(name: "Mint Leaves", price: 90),
      ],
    ),
  ];

  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

  O P E R A T O R S

  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check  if the food items are same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddons && isSameFood;
    });

    // if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S

  */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    //format the date to include up toseconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");
      if (CartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(CartItem.selectedAddons)}");
      }

      receipt.writeln();
    }
    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return " " + price.toStringAsFixed(2);
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
