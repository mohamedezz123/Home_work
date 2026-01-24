/* 
Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
*/

void main() {
  num finalprice;
  int price = 900;
  bool isStudent = true;
  bool hasCoupon = true;
  if (isStudent) {
    if (hasCoupon) {
      finalprice = price - 250;
      print('the final price is : $finalprice');
    } else {
      finalprice = price - 100;
      print("the final price is : $finalprice");
    }
  } else if (hasCoupon) {
    finalprice = price - 150;
    print("the final price is : $finalprice");
  } else if (price > 800) {
    finalprice = price - 200;
    print("the final price is : $finalprice");
  } else {
    print("the price is $price");
  }
}
