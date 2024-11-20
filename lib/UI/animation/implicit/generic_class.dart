class Tween<T>{
  T begin;
  T end;

  Tween({required this.begin, required this.end});
}





























class Cart<T> {
  List<T> items = [];

  void addItem(T item) {
    items.add(item);
    print('تمت إضافة العنصر: $item');
  }

  void displayItems() {
    print('محتويات السلة: $items');
  }
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);

  @override
  String toString() => '$name (\$$price)';
}

class Service {
  final String description;
  final double hourlyRate;

  Service(this.description, this.hourlyRate);

  @override
  String toString() => '$description (\$$hourlyRate/hour)';
}

void main() {
  var productCart = Cart<Product>();
  productCart.addItem(Product("هاتف", 1000.0));
  productCart.addItem(Product("لابتوب", 2000.0));
  productCart.displayItems();

  var serviceCart = Cart<Service>();
  serviceCart.addItem(Service("توصيل", 50.0));
  serviceCart.addItem(Service("صيانة", 100.0));
  serviceCart.displayItems();
}
