import 'package:project2/models/cartitem.dart';
import 'package:project2/models/food.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
  Food(
  name: "Pho Bo (Beef Noodle Soup)",
  description: "Tender beef, rice noodles, and fragrant herbs in a rich, aromatic broth.",
  imagePath: "lib/images/Vietnamese/pho_bo.png",
  price: 12.95,
  category: FoodCategory.Viet_food,
  availableAddon: [
  Addon(name: "Extra beef", price: 2.00),
  Addon(name: "Extra quail egg", price: 1.00),
  Addon(name: "Extra Thai basil", price: 0.50),
  ],
  ),
  Food(
  name: "Goi Cuon (Summer Rolls)",
  description: "Fresh rice paper rolls filled with shrimp, pork, vermicelli, and crisp vegetables.",
  imagePath: "lib/images/Vietnamese/goi_cuon.png",
  price: 8.95,
  category: FoodCategory.Viet_food,
  availableAddon: [
  Addon(name: "Extra shrimp", price: 2.00),
  Addon(name: "Extra peanut sauce", price: 1.00),
  Addon(name: "Extra veggies", price: 0.75),
  ]),
  Food(
  name: "Bun Cha (Grilled Pork with Noodles)",
  description: "Chargrilled pork patties and sliced pork belly served with rice vermicelli, herbs, and a tangy dipping sauce.",
  imagePath: "lib/images/Vietnamese/bun_cha.png",
  price: 14.95,
  category: FoodCategory.Viet_food,
  availableAddon: [
  Addon(name: "Extra pork", price: 2.00),
  Addon(name: "Extra fried egg", price: 1.00),
  Addon(name: "Extra herbs", price: 0.75),
  ]),
  Food(
  name: "Banh Mi (Vietnamese Sandwich)",
  description: "A crusty baguette filled with a combination of pâté, cured meats, pickled vegetables, and fresh herbs.",
  imagePath: "lib/images/Vietnamese/banh_mi.png",
  price: 9.95,
  category: FoodCategory.Viet_food,
  availableAddon: [
  Addon(name: "Extra pâté", price: 1.50),
  Addon(name: "Extra pickled carrots", price: 1.00),
  Addon(name: "Extra meat", price: 0.75),
  ]),
  Food(
  name: "Che (Vietnamese Dessert)",
  description: "A sweet and creamy coconut-based pudding with tapioca pearls, mung beans, and tropical fruits.",
  imagePath: "lib/images/Vietnamese/che.png",
  price: 6.95,
  category: FoodCategory.Viet_food,
  availableAddon: [
  Addon(name: "Extra tapioca pearls", price: 1.00),
  Addon(name: "Extra mango", price: 0.75),
  Addon(name: "Extra toasted coconut", price: 0.50),
  ]),
  Food(
  name: "Bulgogi (Marinated Beef)",
  description: "Thinly sliced beef marinated in a sweet and savory sauce, grilled to perfection.",
  imagePath: "lib/images/Korean/bulgogi.png",
  price: 18.95,
  category: FoodCategory.Korean_food,
  availableAddon: [
  Addon(name: "Extra beef", price: 3.00),
  Addon(name: "Extra sautéed mushrooms", price: 2.00),
  Addon(name: "Extra kimchi", price: 1.00),
  ]),
  Food(
  name: "Kimchi Fried Rice",
  description: "Spicy fermented cabbage combined with rice, vegetables, and a fried egg",
  imagePath: "lib/images/Korean/kimchi_fried_rice.png",
  price: 12.95,
  category: FoodCategory.Korean_food,
  availableAddon: [
  Addon(name: "Extra fried egg", price: 2.00),
  Addon(name: "Extra spam", price: 1.50),
  Addon(name: "Extra scallions", price: 1.00),
  ]),
  Food(
  name: "Japchae",
  description: "Chewy sweet potato noodles stir-fried with vegetables, beef, and a sweet soy sauce.",
  imagePath: "lib/images/Korean/japchae.png",
  price: 14.95,
  category: FoodCategory.Korean_food,
  availableAddon: [
  Addon(name: "Extra beef", price: 2.00),
  Addon(name: "Extra veggies", price: 1.00),
  Addon(name: "Extra sesame seeds", price: 0.75),
  ]),
  Food(
  name: "Galbi (Grilled Short Ribs)",
  description: "Tender, marinated short ribs grilled tableside and served with ssamjang (dipping sauce).",
  imagePath: "lib/images/Korean/galbi.png",
  price: 24.95,
  category: FoodCategory.Korean_food,
  availableAddon: [
  Addon(name: "Extra ribs", price: 4.00),
  Addon(name: "Extra ssamjang", price: 2.00),
  Addon(name: "Extra pickled radish", price: 1.00),
  ]),
  Food(
  name: "Tteokbokki",
  description: "Chewy rice cakes simmered in a spicy, gochujang-based sauce with fish cakes and scallions",
  imagePath: "lib/images/Korean/tteokbokki.png",
  price: 11.95,
  category: FoodCategory.Korean_food,
  availableAddon: [
  Addon(name: "Extra fish cakes", price: 1.50),
  Addon(name: "Extra boiled egg", price: 1.00),
  Addon(name: "Extra scallions", price: 0.75),
  ]),
  Food(
  name: "Paella Valenciana",
  description: "A classic Spanish dish of saffron-infused rice with shrimp, chicken, and vegetables.",
  imagePath: "lib/images/Spanish/paella_valenciana.png",
  price: 22.95,
  category: FoodCategory.Spanish_food,
  availableAddon: [
  Addon(name: "Extra seafood", price: 4.00),
  Addon(name: "Extra saffron aioli", price: 2.00),
  Addon(name: "Extra lemon wedges", price: 1.00),
  ]),
  Food(
  name: "Gazpacho",
  description: "A chilled tomato-based soup, bursting with fresh, vibrant flavors.",
  imagePath: "lib/images/Spanish/gazpacho.png",
  price: 8.95,
  category: FoodCategory.Spanish_food,
  availableAddon: [
  Addon(name: "Extra croutons", price: 1.50),
  Addon(name: "Extra diced avocado", price: 1.00),
  Addon(name: "Extra sherry vinegar", price: 0.75),
  ]),
  Food(
  name: "Patatas Bravas",
  description: "Crispy fried potatoes served with a spicy tomato sauce and aioli.",
  imagePath: "lib/images/Spanish/patatas_bravas.png",
  price: 9.95,
  category: FoodCategory.Spanish_food,
  availableAddon: [
  Addon(name: "Extra chorizo", price: 1.50),
  Addon(name: "Extra fried egg", price: 1.00),
  Addon(name: "Extra aioli", price: 0.75),
  ]),
  Food(
  name: "Gambas al Ajillo",
  description: "Shrimp sautéed in garlic-infused olive oil, with a sprinkle of red pepper flakes.",
  imagePath: "lib/images/Spanish/gambas_al_ajillo.png",
  price: 16.95,
  category: FoodCategory.Spanish_food,
  availableAddon: [
  Addon(name: "Extra shrimp", price: 3.00),
  Addon(name: "Extra garlic bread", price: 1.50),
  Addon(name: "Extra lemon", price: 1.00),
  ]),
  Food(
  name: "Crema Catalana",
  description: "A rich, creamy custard dessert with a caramelized sugar topping.",
  imagePath: "lib/images/Spanish/crema_catalana.png",
  price: 7.95,
  category: FoodCategory.Spanish_food,
  availableAddon: [
  Addon(name: "Extra berries", price: 1.00),
  Addon(name: "Extra whipped cream", price: 0.75),
  Addon(name: "Extra caramel drizzle", price: 0.50),
  ]),
  Food(
  name: "Margherita Pizza",
  description: "A classic Neapolitan pizza with tomato sauce, fresh mozzarella, and basil.",
  imagePath: "lib/images/Italian/margherita_pizza.png",
  price: 12.95,
  category: FoodCategory.Italian_food,
  availableAddon: [
  Addon(name: "Extra cheese", price: 2.00),
  Addon(name: "Extra pepperoni", price: 1.50),
  Addon(name: "Extra basil", price: 1.00),
  ]),
  Food(
  name: "Spaghetti Carbonara",
  description: "Pasta tossed with eggs, pancetta, Parmesan, and black pepper.",
  imagePath: "lib/images/Italian/spaghetti_carbonara.png",
  price: 14.95,
  category: FoodCategory.Italian_food,
  availableAddon: [
  Addon(name: "Extra pancetta", price: 2.00),
  Addon(name: "Extra Parmesan cheese", price: 1.50),
  Addon(name: "Extra cracked black pepper", price: 1.00),
  ]),
  Food(
  name: "Lasagna",
  description: "Layers of pasta, ground beef, ricotta, and a rich tomato sauce, baked to perfection.",
  imagePath: "lib/images/Italian/lasagna.png",
  price: 16.95,
  category: FoodCategory.Italian_food,
  availableAddon: [
  Addon(name: "Extra beef", price: 2.00),
  Addon(name: "Extra ricotta", price: 1.50),
  Addon(name: "Extra garlic bread", price: 1.00),
  ]),
  Food(
  name: "Caprese Salad",
  description: "Sliced tomatoes, fresh mozzarella, basil, and a drizzle of balsamic reduction.",
  imagePath: "lib/images/Italian/caprese_salad.png",
  price: 10.95,
  category: FoodCategory.Italian_food,
  availableAddon: [
  Addon(name: "Extra balsamic glaze", price: 1.50),
  Addon(name: "Extra prosciutto", price: 1.00),
  Addon(name: "Extra arugula", price: 0.75),
  ]),
  Food(
  name: "Tiramisu",
  description: "A decadent Italian dessert of ladyfingers soaked in coffee, layered with mascarpone and dusted with cocoa.",
  imagePath: "lib/images/Italian/tiramisu.png",
  price: 8.95,
  category: FoodCategory.Italian_food,
  availableAddon: [
  Addon(name: "Extra mascarpone", price: 1.50),
  Addon(name: "Extra espresso shot", price: 1.00),
  Addon(name: "Extra cocoa powder", price: 0.75),
  ]),
  Food(
  name: "Cheeseburger",
  description: "A juicy beef patty topped with melted cheese, lettuce, tomato, onion, and condiments, served on a brioche bun.",
  imagePath: "lib/images/American/cheeseburger.png",
  price: 12.95,
  category: FoodCategory.American_food,
  availableAddon: [
  Addon(name: "Extra patty", price: 3.00),
  Addon(name: "Extra bacon", price: 1.50),
  Addon(name: "Extra sautéed mushrooms", price: 1.00),
  ]),
  Food(
  name: "Mac and Cheese",
  description: "Creamy, indulgent macaroni and cheese, baked to a golden brown crust.",
  imagePath: "lib/images/American/mac_and_cheese.png",
  price: 9.95,
  category: FoodCategory.American_food,
  availableAddon: [
  Addon(name: "Extra truffle oil", price: 2.00),
  Addon(name: "Extra crispy prosciutto", price: 1.50),
  Addon(name: "Extra breadcrumb topping", price: 1.00),
  ]),
  Food(
  name: "BBQ Ribs",
  description: "Tender, fall-off-the-bone pork ribs, smothered in a tangy, smoky barbecue sauce.",
  imagePath: "lib/images/American/bbq_ribs.png",
  price: 18.95,
  category: FoodCategory.American_food,
  availableAddon: [
  Addon(name: "Extra half rack", price: 8.00),
  Addon(name: "Extra coleslaw", price: 2.00),
  Addon(name: "Extra cornbread", price: 1.50),
  ]),
  Food(
  name: "Cobb Salad",
  description: "A composed salad with grilled chicken, bacon, avocado, hard-boiled egg, and various other toppings.",
  imagePath: "lib/images/American/cobb_salad.png",
  price: 13.95,
  category: FoodCategory.American_food,
  availableAddon: [
  Addon(name: "Extra grilled shrimp", price: 3.00),
  Addon(name: "Extra crumbled blue cheese", price: 2.00),
  Addon(name: "Extra balsamic vinaigrette", price: 1.00),
  ]),
  Food(
  name: "Apple Pie",
  description: "A classic American dessert with a flaky crust and a sweet, cinnamon-spiced apple filling.",
  imagePath: "lib/images/American/apple_pie.png",
  price: 6.95,
  category: FoodCategory.American_food,
  availableAddon: [
  Addon(name: "Extra vanilla ice cream", price: 2.00),
  Addon(name: "Extra caramel sauce", price: 1.50),
  Addon(name: "Extra whipped cream", price: 1.00),
  ]),
  ];

  final List<CartItem> _cart = [];

  String _deliveryAddress = "123 Flint Drive, Atlanta, Georgia 30303";

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {

    CartItem? cartIem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartIem != null) {
      cartIem.quantity++;
    }
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

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

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt:");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-mm-dd hh:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------------------------------------------------------------");
    receipt.writeln();

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("     Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------------------------------------------------------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
