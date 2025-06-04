void greetCustomer(String name){
  double time = 21.05;

  if(time <= 12.00){
    print('Good Morning🌄🌄🌅 , $name welcome to Madcafe, how can i serve you today');
  }
  else if(time >= 12.00 && time <= 16.00){
    print('Good Afternoon ☀️☀️🌞, $name welcome to Madcafe, how can i serve you today');
  }
  else{
    print('Good Evening 🌃🌃🌆, $name  welcome to Madcafe, how can i serve you today');
  }

}

void main (){
  greetCustomer('Brian');
}
