String [] palabra2;

class DNA {
  //Atributos
  //My Genes es el arreglo donde se guardan los numeros en aleatorio
  char [] myGenes; //Array de Genes
  int score = 0;
  String texto = "";

  //Contructor
  //En este contructor se crea un arreglo de un tamaño "n" igual al tamaño de la variable numero de elementos
  DNA(int numElements) {
    myGenes = new char[numElements];
    palabra2 = new String[numElements+1];

    //Durante el siguiente ciclo, se obtiene un valor aleatorio para cada elemento del arreglo desde 0, hasta el numero elementos
    for (int i = 0; i < numElements; i++) {
      int aleatorio = int(random(47, 58));
      while ((aleatorio > 58 && aleatorio < 63) ||  (aleatorio > 90 && aleatorio < 97)) {
        aleatorio = int(random(47, 122));
      }
      if (aleatorio == 63) {
        myGenes[i] = 32;
      } else if (aleatorio == 64) {
        myGenes[i] = 46;
      } else {
        myGenes[i] = char(aleatorio);
      }
    }
  }



  //Metodos

  //El metodo printData de la clase DNA imprime la palabra que se generó de forma aleatoria 
  void printData() {
    for (int i = 0; i < myGenes.length-1; i++) {
      //print(myGenes[i]);     
      texto = texto + str(myGenes[i]);
      if(i == myGenes.length-2){
        palabra2 [i] = texto;
      }
    }
    println("");
    println(palabra2[myGenes.length-2]);
    println("");
    print(texto);
    println(myGenes[myGenes.length-1]);
  }

  //El metodo calcFitness cuenta cuantos elementos de la palabra que se generó aleatoria son iguales a la palabra objetivo
  int calcFitness(String target) {
    for (int i = 0; i < target.length(); i++) {
      if (target.charAt(i) == myGenes[i]) {
        score++;
      }
    }
    return score;
  }
}
