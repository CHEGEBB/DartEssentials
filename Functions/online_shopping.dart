void main() {
  // Initial cart with item prices
  List<double> cartPrices = [15.99, 8.50, 25.00, 5.99, 45.75, 12.30, 3.25, 89.99];
  
  print('Welcome to Online Shopping Cart!');
  print('Original cart items: \$${cartPrices.join(', \$')}');
  print('Total items in cart: ${cartPrices.length}');
  
  // Filter out items below $10 using anonymous function
  var expensiveItems = cartPrices.where((price) => price >= 10.0).toList();
  print('\nItems \$10 and above: \$${expensiveItems.join(', \$')}');
  print('Filtered items count: ${expensiveItems.length}');
  
  // Calculate subtotal before discounts
  double subtotal = calculateTotal(expensiveItems);
  print('\nSubtotal (before discounts): \$${subtotal.toStringAsFixed(2)}');
  
  // Apply 15% discount using higher-order function
  List<double> discountedPrices = applyDiscount(expensiveItems, (price) => price * 0.85);
  print('After 15% discount: \$${discountedPrices.map((p) => p.toStringAsFixed(2)).join(', \$')}');
  
  // Calculate total with tax (8.5%)
  double totalWithTax = calculateTotal(discountedPrices, taxRate: 0.085);
  print('\nTotal after discount + tax: \$${totalWithTax.toStringAsFixed(2)}');
  
  // Apply special factorial discount
  double factorialDiscountPercent = calculateFactorialDiscount(discountedPrices.length);
  double specialDiscountAmount = totalWithTax * (factorialDiscountPercent / 100);
  double finalPrice = totalWithTax - specialDiscountAmount;
  
  print('\nSpecial factorial discount (${factorialDiscountPercent.toStringAsFixed(1)}%): -\$${specialDiscountAmount.toStringAsFixed(2)}');
  print('FINAL PRICE: \$${finalPrice.toStringAsFixed(2)}');
  
  // Show savings
  double originalTotal = calculateTotal(cartPrices, taxRate: 0.085);
  double totalSavings = originalTotal - finalPrice;
  print('\nYou saved: \$${totalSavings.toStringAsFixed(2)} from original price of \$${originalTotal.toStringAsFixed(2)}');
}

// Standard function with optional parameters
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.fold(0.0, (sum, price) => sum + price);
  return subtotal + (subtotal * taxRate);
}

// Higher-order function that accepts a discount function
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map((price) => discountFunction(price)).toList();
}

// Recursive function to calculate factorial discount
double calculateFactorialDiscount(int itemCount) {
  if (itemCount <= 1) {
    return 1.0;
  }
  return itemCount * calculateFactorialDiscount(itemCount - 1);
}