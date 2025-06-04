void greetCustomer(){
  double time = 12.05;

  if(time <= 12.00){
    print('Good Morning🌄🌄🌅, welcome to Madcafe, how can i serve you today');
  }
  else if(time >= 12.00 && time <= 16.00){
    print('Good Afternoon ☀️☀️🌞, welcome to Madcafe, how can i serve you today');
  }
  else{
    print('Good Evening 🌃🌃🌆, welcome to Madcafe, how can i serve you today');
  }

}

void main (){
  greetCustomer();
}
