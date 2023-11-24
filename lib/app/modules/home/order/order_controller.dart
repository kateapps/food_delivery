import 'package:empiretest/app/data/models/product.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  RxMap<int, Product> order = RxMap();

  void incrementProductCount(Product product) {
    if (order.containsKey(product.id)) {
      order.update(product.id,
          (value) => product.copyWith(count: order[product.id]!.count + 1));
    } else {
      order[product.id] = product.copyWith(count: 1);
    }
  }

  void decrementProductCount(Product product) {
    if (order[product.id]?.count == 1) {
      order.remove(product.id);
    } else {
      order.update(product.id,
          (value) => product.copyWith(count: order[product.id]!.count - 1));
    }
  }

  void clearOrder() => order.clear();

  int getSumm() {
    var summ = 0;
    for (var element in order.values) {
      summ += element.price * element.count;
    }
    return summ;
  }

  int getCountProduct(Product product) => order[product.id]?.count ?? 0;

  int getAmountProductsInCategory(int categoryId) {
    var list =
        order.values.where((element) => element.categoryId == categoryId);
    return list.length;
  }
}
