class Circle{

  double _radius;
  Circle(this._radius);

  double get radius => _radius;
  set radius(double value){
    if(value >0){
      _radius = value;
    }
    else{
      print("Radius must be greater than 0");
    }
  }
  double calculateArea(){
    return 3.146*_radius *_radius;
  }
}

void main() {
  // Creating an instance of Circle
  Circle circle = Circle(5.0);

  // Accessing the radius using getter
  print("Initial radius: ${circle.radius}");

  // Calculating and printing the area
  print("Initial area: ${circle.calculateArea()}");

  // Updating the radius using setter
  circle.radius = 7.0;

  // Accessing updated radius and area
  print("Updated radius: ${circle.radius}");
  print("Updated area: ${circle.calculateArea()}");

  // Trying to set an invalid radius
  circle.radius = -3.0; // This will trigger validation
}