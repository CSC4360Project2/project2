import 'package:project2/models/cartitem.dart';
import 'package:project2/models/extra_item.dart';
import 'package:project2/models/food.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // Restaurant
  Map<String, dynamic> allFood = {
    "viet": [
      Food(
          name: "Pho Bo (Beef Noodle Soup)",
          description:
              "Tender beef, rice noodles, and fragrant herbs in a rich, aromatic broth.",
          imagePath: "lib/images/Vietnamese/pho_bo.png",
          price: 12.95,
          extra: [
            ExtraItem(name: "Extra beef", price: 2.00),
            ExtraItem(name: "Extra quail egg", price: 1.00),
            ExtraItem(name: "Extra Thai basil", price: 0.50),
          ]),
      Food(
          name: "Goi Cuon (Summer Rolls)",
          description:
              "Fresh rice paper rolls filled with shrimp, pork, vermicelli, and crisp vegetables.",
          imagePath: "lib/images/Vietnamese/goi_cuon.png",
          price: 8.95,
          extra: [
            ExtraItem(name: "Extra shrimp", price: 2.00),
            ExtraItem(name: "Extra peanut sauce", price: 1.00),
            ExtraItem(name: "Extra veggies", price: 0.75),
          ]),
      Food(
          name: "Bun Cha (Grilled Pork with Noodles)",
          description:
              "Chargrilled pork patties and sliced pork belly served with rice vermicelli, herbs, and a tangy dipping sauce.",
          imagePath: "lib/images/Vietnamese/bun_cha.png",
          price: 14.95,
          extra: [
            ExtraItem(name: "Extra pork", price: 2.00),
            ExtraItem(name: "Extra fried egg", price: 1.00),
            ExtraItem(name: "Extra herbs", price: 0.75),
          ]),
      Food(
          name: "Banh Mi (Vietnamese Sandwich)",
          description:
              "A crusty baguette filled with a combination of pâté, cured meats, pickled vegetables, and fresh herbs.",
          imagePath: "lib/images/Vietnamese/banh_mi.png",
          price: 9.95,
          extra: [
            ExtraItem(name: "Extra pâté", price: 1.50),
            ExtraItem(name: "Extra pickled carrots", price: 1.00),
            ExtraItem(name: "Extra meat", price: 0.75),
          ]),
      Food(
          name: "Che (Vietnamese Dessert)",
          description:
              "A sweet and creamy coconut-based pudding with tapioca pearls, mung beans, and tropical fruits.",
          imagePath: "lib/images/Vietnamese/che.png",
          price: 6.95,
          extra: [
            ExtraItem(name: "Extra tapioca pearls", price: 1.00),
            ExtraItem(name: "Extra mango", price: 0.75),
            ExtraItem(name: "Extra toasted coconut", price: 0.50),
          ]),
    ],
    "korean": [
      Food(
          name: "Bulgogi (Marinated Beef)",
          description:
              "Thinly sliced beef marinated in a sweet and savory sauce, grilled to perfection.",
          imagePath: "lib/images/Korean/bulgogi.png",
          price: 18.95,
          extra: [
            ExtraItem(name: "Extra beef", price: 3.00),
            ExtraItem(name: "Extra sautéed mushrooms", price: 2.00),
            ExtraItem(name: "Extra kimchi", price: 1.00),
          ]),
      Food(
          name: "Kimchi Fried Rice",
          description:
              "Spicy fermented cabbage combined with rice, vegetables, and a fried egg",
          imagePath: "lib/images/Korean/kimchi_fried_rice.png",
          price: 12.95,
          extra: [
            ExtraItem(name: "Extra fried egg", price: 2.00),
            ExtraItem(name: "Extra spam", price: 1.50),
            ExtraItem(name: "Extra scallions", price: 1.00),
          ]),
      Food(
          name: "Japchae",
          description:
              "Chewy sweet potato noodles stir-fried with vegetables, beef, and a sweet soy sauce.",
          imagePath: "lib/images/Korean/japchae.png",
          price: 14.95,
          extra: [
            ExtraItem(name: "Extra beef", price: 2.00),
            ExtraItem(name: "Extra veggies", price: 1.00),
            ExtraItem(name: "Extra sesame seeds", price: 0.75),
          ]),
      Food(
          name: "Galbi (Grilled Short Ribs)",
          description:
              "Tender, marinated short ribs grilled tableside and served with ssamjang (dipping sauce).",
          imagePath: "lib/images/Korean/galbi.png",
          price: 24.95,
          extra: [
            ExtraItem(name: "Extra ribs", price: 4.00),
            ExtraItem(name: "Extra ssamjang", price: 2.00),
            ExtraItem(name: "Extra pickled radish", price: 1.00),
          ]),
      Food(
          name: "Tteokbokki",
          description:
              "Chewy rice cakes simmered in a spicy, gochujang-based sauce with fish cakes and scallions",
          imagePath: "lib/images/Korean/tteokbokki.png",
          price: 11.95,
          extra: [
            ExtraItem(name: "Extra fish cakes", price: 1.50),
            ExtraItem(name: "Extra boiled egg", price: 1.00),
            ExtraItem(name: "Extra scallions", price: 0.75),
          ]),
    ],
    "spanish": [
      Food(
          name: "Paella Valenciana",
          description:
              "A classic Spanish dish of saffron-infused rice with shrimp, chicken, and vegetables.",
          imagePath: "lib/images/Spanish/paella_valenciana.png",
          price: 22.95,
          extra: [
            ExtraItem(name: "Extra seafood", price: 4.00),
            ExtraItem(name: "Extra saffron aioli", price: 2.00),
            ExtraItem(name: "Extra lemon wedges", price: 1.00),
          ]),
      Food(
          name: "Gazpacho",
          description:
              "A chilled tomato-based soup, bursting with fresh, vibrant flavors.",
          imagePath: "lib/images/Spanish/gazpacho.png",
          price: 8.95,
          extra: [
            ExtraItem(name: "Extra croutons", price: 1.50),
            ExtraItem(name: "Extra diced avocado", price: 1.00),
            ExtraItem(name: "Extra sherry vinegar", price: 0.75),
          ]),
      Food(
          name: "Patatas Bravas",
          description:
              "Crispy fried potatoes served with a spicy tomato sauce and aioli.",
          imagePath: "lib/images/Spanish/patatas_bravas.png",
          price: 9.95,
          extra: [
            ExtraItem(name: "Extra chorizo", price: 1.50),
            ExtraItem(name: "Extra fried egg", price: 1.00),
            ExtraItem(name: "Extra aioli", price: 0.75),
          ]),
      Food(
          name: "Gambas al Ajillo",
          description:
              "Shrimp sautéed in garlic-infused olive oil, with a sprinkle of red pepper flakes.",
          imagePath: "lib/images/Spanish/gambas_al_ajillo.png",
          price: 16.95,
          extra: [
            ExtraItem(name: "Extra shrimp", price: 3.00),
            ExtraItem(name: "Extra garlic bread", price: 1.50),
            ExtraItem(name: "Extra lemon", price: 1.00),
          ]),
      Food(
          name: "Crema Catalana",
          description:
              "A rich, creamy custard dessert with a caramelized sugar topping.",
          imagePath: "lib/images/Spanish/crema_catalana.png",
          price: 7.95,
          extra: [
            ExtraItem(name: "Extra berries", price: 1.00),
            ExtraItem(name: "Extra whipped cream", price: 0.75),
            ExtraItem(name: "Extra caramel drizzle", price: 0.50),
          ]),
    ],
    "italian": [
      Food(
          name: "Margherita Pizza",
          description:
              "A classic Neapolitan pizza with tomato sauce, fresh mozzarella, and basil.",
          imagePath: "lib/images/Italian/margherita_pizza.png",
          price: 12.95,
          extra: [
            ExtraItem(name: "Extra cheese", price: 2.00),
            ExtraItem(name: "Extra pepperoni", price: 1.50),
            ExtraItem(name: "Extra basil", price: 1.00),
          ]),
      Food(
          name: "Spaghetti Carbonara",
          description:
              "Pasta tossed with eggs, pancetta, Parmesan, and black pepper.",
          imagePath: "lib/images/Italian/spaghetti_carbonara.png",
          price: 14.95,
          extra: [
            ExtraItem(name: "Extra pancetta", price: 2.00),
            ExtraItem(name: "Extra Parmesan cheese", price: 1.50),
            ExtraItem(name: "Extra cracked black pepper", price: 1.00),
          ]),
      Food(
          name: "Lasagna",
          description:
              "Layers of pasta, ground beef, ricotta, and a rich tomato sauce, baked to perfection.",
          imagePath: "lib/images/Italian/lasagna.png",
          price: 16.95,
          extra: [
            ExtraItem(name: "Extra beef", price: 2.00),
            ExtraItem(name: "Extra ricotta", price: 1.50),
            ExtraItem(name: "Extra garlic bread", price: 1.00),
          ]),
      Food(
          name: "Caprese Salad",
          description:
              "Sliced tomatoes, fresh mozzarella, basil, and a drizzle of balsamic reduction.",
          imagePath: "lib/images/Italian/caprese_salad.png",
          price: 10.95,
          extra: [
            ExtraItem(name: "Extra balsamic glaze", price: 1.50),
            ExtraItem(name: "Extra prosciutto", price: 1.00),
            ExtraItem(name: "Extra arugula", price: 0.75),
          ]),
      Food(
          name: "Tiramisu",
          description:
              "A decadent Italian dessert of ladyfingers soaked in coffee, layered with mascarpone and dusted with cocoa.",
          imagePath: "lib/images/Italian/tiramisu.png",
          price: 8.95,
          extra: [
            ExtraItem(name: "Extra mascarpone", price: 1.50),
            ExtraItem(name: "Extra espresso shot", price: 1.00),
            ExtraItem(name: "Extra cocoa powder", price: 0.75),
          ]),
    ],
    "american": [
      Food(
          name: "Cheeseburger",
          description:
              "A juicy beef patty topped with melted cheese, lettuce, tomato, onion, and condiments, served on a brioche bun.",
          imagePath: "lib/images/American/cheeseburger.png",
          price: 12.95,
          extra: [
            ExtraItem(name: "Extra patty", price: 3.00),
            ExtraItem(name: "Extra bacon", price: 1.50),
            ExtraItem(name: "Extra sautéed mushrooms", price: 1.00),
          ]),
      Food(
          name: "Mac and Cheese",
          description:
              "Creamy, indulgent macaroni and cheese, baked to a golden brown crust.",
          imagePath: "lib/images/American/mac_and_cheese.png",
          price: 9.95,
          extra: [
            ExtraItem(name: "Extra truffle oil", price: 2.00),
            ExtraItem(name: "Extra crispy prosciutto", price: 1.50),
            ExtraItem(name: "Extra breadcrumb topping", price: 1.00),
          ]),
      Food(
          name: "BBQ Ribs",
          description:
              "Tender, fall-off-the-bone pork ribs, smothered in a tangy, smoky barbecue sauce.",
          imagePath: "lib/images/American/bbq_ribs.png",
          price: 18.95,
          extra: [
            ExtraItem(name: "Extra half rack", price: 8.00),
            ExtraItem(name: "Extra coleslaw", price: 2.00),
            ExtraItem(name: "Extra cornbread", price: 1.50),
          ]),
      Food(
          name: "Cobb Salad",
          description:
              "A composed salad with grilled chicken, bacon, avocado, hard-boiled egg, and various other toppings.",
          imagePath: "lib/images/American/cobb_salad.png",
          price: 13.95,
          extra: [
            ExtraItem(name: "Extra grilled shrimp", price: 3.00),
            ExtraItem(name: "Extra crumbled blue cheese", price: 2.00),
            ExtraItem(name: "Extra balsamic vinaigrette", price: 1.00),
          ]),
      Food(
          name: "Apple Pie",
          description:
              "A classic American dessert with a flaky crust and a sweet, cinnamon-spiced apple filling.",
          imagePath: "lib/images/American/apple_pie.png",
          price: 6.95,
          extra: [
            ExtraItem(name: "Extra vanilla ice cream", price: 2.00),
            ExtraItem(name: "Extra caramel sauce", price: 1.50),
            ExtraItem(name: "Extra whipped cream", price: 1.00),
          ]),
    ],
  };
// Address
  final String address = "123 Flint Drive, Atlanta, Georgia 30303";

// Get individual food menu
  List<Food> get vietMenu => allFood["viet"];
  List<Food> get koreanMenu => allFood["korean"];
  List<Food> get spanishMenu => allFood["spanish"];
  List<Food> get italianMenu => allFood["italian"];
  List<Food> get americanMenu => allFood["american"];

  String get currentAddress => address;

// Food method
  int get foodCount => allFood.length;
  List<String> get allFoodKey {
    return allFood.keys.toList();
  }

  // List<List<Food>> get allFoodItems {
  //   return allFood.values.map((e) => e as List<Food>).toList();
  // }
}











// class Restaurant extends ChangeNotifier {
  // final List<CartItem> _cart = [];

  // String _deliveryAddress = "123 Flint Drive, Atlanta, Georgia 30303";

  // List<Food> get menu => _menu;
  // List<CartItem> get cart => _cart;
  // String get deliveryAddress => _deliveryAddress;

  // void addToCart(Food food, List<Addon> selectedAddons) {
  //   CartItem? cartIem = _cart.firstWhereOrNull((item) {
  //     bool isSameFood = item.food == food;
  //     bool isSameAddons =
  //         ListEquality().equals(item.selectedAddons, selectedAddons);

  //     return isSameFood && isSameAddons;
  //   });

  //   if (cartIem != null) {
  //     cartIem.quantity++;
  //   } else {
  //     _cart.add(
  //       CartItem(food: food, selectedAddons: selectedAddons),
  //     );
  //   }
  //   notifyListeners();
  // }

  // void removeFromCart(CartItem cartItem) {
  //   int cartIndex = _cart.indexOf(cartItem);

  //   if (cartIndex != -1) {
  //     if (_cart[cartIndex].quantity > 1) {
  //       _cart[cartIndex].quantity--;
  //     } else {
  //       _cart.removeAt(cartIndex);
  //     }
  //   }
  //   notifyListeners();
  // }

  // double getTotalPrice() {
  //   double total = 0.0;

  //   for (CartItem cartItem in _cart) {
  //     double itemTotal = cartItem.food.price;

  //     for (Addon addon in cartItem.selectedAddons) {
  //       itemTotal += addon.price;
  //     }

  //     total += itemTotal * cartItem.quantity;
  //   }

  //   return total;
  // }

  // int getTotalItemCount() {
  //   int totalItemCount = 0;

  //   for (CartItem cartItem in _cart) {
  //     totalItemCount += cartItem.quantity;
  //   }

  //   return totalItemCount;
  // }

  // void clearCart() {
  //   _cart.clear();
  //   notifyListeners();
  // }

  // void updateDeliveryAddress(String newAddress) {
  //   _deliveryAddress = newAddress;
  //   notifyListeners();
  // }

  // String displayCartReceipt() {
  //   final receipt = StringBuffer();
  //   receipt.writeln("Here's your receipt:");
  //   receipt.writeln();

  //   String formattedDate =
  //       DateFormat('yyyy-mm-dd hh:mm:ss').format(DateTime.now());

  //   receipt.writeln(formattedDate);
  //   receipt.writeln();
  //   receipt.writeln(
  //       "---------------------------------------------------------------------");
  //   receipt.writeln();

  //   for (final cartItem in _cart) {
  //     receipt.writeln(
  //         "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
  //     if (cartItem.selectedAddons.isNotEmpty) {
  //       receipt
  //           .writeln("     Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
  //     }
  //     receipt.writeln();
  //   }
  //   receipt.writeln(
  //       "---------------------------------------------------------------------");
  //   receipt.writeln();
  //   receipt.writeln("Total Items: ${getTotalItemCount()}");
  //   receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
  //   receipt.writeln();
  //   receipt.writeln("Delivering to: $deliveryAddress");

  //   return receipt.toString();
  // }

  // String _formatPrice(double price) {
  //   return "\$${price.toStringAsFixed(2)}";
  // }

  // String _formatAddons(List<Addon> addons) {
  //   return addons
  //       .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
  //       .join(", ");
  // }
// }
