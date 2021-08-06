class Item {
  final String name;
  final String path;

  Item(this.name, this.path);
}

class FoodItem extends Item {
  final int price;

  FoodItem(this.price, name, path) : super(name, path);
}

class Brand extends Item {
  Brand(name, path) : super(name, path);
}

List<Brand> brandItems = [
  Brand("_", 'images/mcdonalds.png'),
  Brand("_", 'images/dominos.png'),
  Brand("_", 'images/burger_king.png'),
  Brand("_", 'images/pizza_hut.png'),
];

List<FoodItem> foodItems = [
  FoodItem(170, "Egg Salad", "images/egg_salad.jpeg"),
  FoodItem(250, "Fresh Salmon", "images/salmon.jpeg"),
  FoodItem(120, "Green Salad", "images/salad.jpeg"),
  FoodItem(400, "Pizza", "images/pizza.jpeg"),
  FoodItem(250, "Burger", "images/burger.jpeg")
];
