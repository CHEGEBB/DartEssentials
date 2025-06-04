double areaRectangle(double length, double width) {
  return  length * width;
}
double areaCircle(double radius) {
  return 3.14 * radius * radius;
}
double areaOfTriangle(double base, double height) {
  return 0.5 * base * height;
}
void main(){
  double area =areaRectangle(5.0, 3.0);
  print('Area of rectangle  is $area cm²');

  double circleArea = areaCircle(7.0);
  print('Area of circle is ⭕ $circleArea cm²');

  double triangleArea = areaOfTriangle(4.0, 6.0);
  print('Area of triangle 📐is $triangleArea cm²');


}