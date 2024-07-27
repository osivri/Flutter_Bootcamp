void main(){

  for(var i = 1; i < 4; i++){
    print("Döngü 1 : $i");
  }

  for(var i = 10; i <= 20; i+=5){
    print("Döngü 2 : $i");
  }

  for(var i = 20; i >= 10; i-=5){
    print("Döngü 3 : $i");
  }

  var sayac = 1;
  while(sayac < 4){
    print("While Döngü 1 : $sayac");
    sayac++;
  }

  for(var i = 1; i < 6; i++){
    if(i == 3){
      break;
    }
    print("Döngü 5 : $i");
  }

  for(var i = 1; i < 6; i++){
    if(i == 3){
      continue;
    }
    print("Döngü 6 : $i");
  }
}