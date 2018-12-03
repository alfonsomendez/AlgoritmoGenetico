Population myPop;
DNA base;
DNA palabra;

void setup(){
  
  myPop = new Population(5,15);
  myPop.calcPopFitness("1587994/1631172");
  myPop.printAll();
  
  //size(500,500);
  /*
  palabra = new DNA(10);
  palabra.crear_Palabra();
  */
}

void draw(){
  //size(500, 500);
  background(0);
  
   //Imprime la base de forma aleatoria
  /* 
  base = new DNA(7);
  base.printData();
  delay(1000);
  */
  /*
  myPop = new Population(5,15);
  myPop.calcPopFitness("1587994/1631172");
  myPop.printAll();
  delay(1000);
  */
}
