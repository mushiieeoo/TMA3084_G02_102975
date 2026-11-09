/// Price of one unit of an item, in RM.
const Map<String, double> menuPrices = {
  'Vegetable Pizza': 15.00,
  'Cheese Pizza': 12.50,
  'Box of Fries': 6.00,
};

/// Returns the total price for [quantity] units at [unitPrice] each.
double orderTotal(double unitPrice, int quantity) {
  if (quantity < 0) {
    throw ArgumentError.value(quantity, 'quantity', 'must not be negative');
  }
  return unitPrice * quantity;
}
