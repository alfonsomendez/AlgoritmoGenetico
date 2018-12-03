class Population {
  //Atributos
  //Se crea un arreglo base llamado myPop en el cual se obtiene de forma aleatoria una palabra
  //Se crea un arreglo de tipo entero llamado popScore el cual indica cuantos arreglos se crean a la vez

  DNA [] myPop;
  int [] popScore;
  String [] palabra;

  //Constructor
  Population(int numInd, int numElements) {
    myPop = new DNA[numInd];
    popScore = new int[numInd];
    palabra = new String[numInd];
    for (int i = 0; i < myPop.length; i++) {
      myPop[i] = new DNA(numElements);
    }
  }

  //Métodos

  //Funcion que cuenta cuantos elementos coinciden con la frase introducida
  void calcPopFitness(String miFrase) {
    for (int i = 0; i < myPop.length; i++) {
      popScore[i] = myPop[i].calcFitness(miFrase);
      if(popScore[i] > 1){
       //print("Elemento que sirve: ");
       //myPop[i].printData();
       //print(palabra2[i]);
       println(" ");
       
    }
    
    //println(palabra[i]);
    }
    
  }

  void printAll() {
    for (int i = 0; i < myPop.length; i++) {
      print(palabra2[i]);
      myPop[i].printData();
      //myPop[i].seleccion();
      println(popScore[i]);
      println("-----------------------");
      
    }
  }
}
