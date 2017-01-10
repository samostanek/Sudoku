int[] pos = {0, 0};
int bx, by, a, c;

void algorA() {
//*****************RIADKY*****************//
  for (int tr = 0; tr <= 8; tr++) {    // Cyklus pre vsetky riadky
  a = 0;
  c = 0;
  
    for (int i = 0; i <= 8; i++) {         // Prebehnutie členov riadku
      if (numbers[tr][i] == 0) {           // Ak je policko prazdne
        a += 1;                            // Toto robim preto lebo ak na konci my zostane č. 1 tak som vlastne zistil ze v tom riadku je iba 1 volny stvorcek
        pos[0] = tr;                       // Zápis pozície pre prípad že to bude jediný volný stvorcek, ja viem, ak to nebude jediní volný stvorcek tak sa to prepíše, ale neni to uz potom jedno ? :D
        pos[1] = i;                        // Zápis pozície pre prípad že to bude jediný volný stvorcek (pokračovanie), ja viem, ak to nebude jediní volný stvorcek tak sa to prepíše, ale neni to uz potom jedno ? :D
      }
    }
    
    if (a == 1) {
      for (int i = 0; i <= 8; i++) {
        c += numbers[tr][i];               // Súčet čísel v tom riadku ktorý práve rieši
      }
      numbers[pos[0]][pos[1]] = 45 - c;    // Vloženie riešenia do správneho štvorčeka
      print("RIADOK");
      print("   ");
      print(pos[0]);
      print(" ");
      print(pos[1]);
      print(" ");
      println(45 - c);
    }
    
  }
//*****************STLPCE*****************//  
  for (int ts = 0; ts <= 8; ts++) {        // Cyklus pre vsetky stlpce
  a = 0;
  c = 0;
    for (int i = 0; i <= 8; i++) {         // Prebehnutie členov stĺpca
      if (numbers[i][ts] == 0) {           // Ak je policko prazdne
        a += 1;                            // Toto robim preto lebo ak na konci my zostane č. 1 tak som vlastne zistil ze v tom stlpci je iba 1 volny stvorcek
        pos[0] = i;                        // Zápis pozície pre prípad že to bude jediný volný stvorcek, ja viem, ak to nebude jediní volný stvorcek tak sa to prepíše, ale neni to uz potom jedno ? :D
        pos[1] = ts;                      // Zápis pozície pre prípad že to bude jediný volný stvorcek (pokračovanie), ja viem, ak to nebude jediní volný stvorcek tak sa to prepíše, ale neni to uz potom jedno ? :D
      }
    }
    if (a == 1) {
      for (int i = 0; i <= 8; i++) {
        c += numbers[i][ts];              // Súčet čísel v tom stĺpci ktorý práve rieši
      }
      numbers[pos[0]][pos[1]] = 45 - c; // Vloženie riešenia do správneho štvorčeka
      print("STLPEC");
      print("   ");
      print(pos[0]);
      print(",");
      print(pos[1]);
      print(" ");
      println(45 - c);
    }
  }
//*****************ŠTVORCE*****************//
  for (int ts = 0; ts <= 8; ts++) {        // Cyklus pre vsetky štvorce
     a = 0;
     c = 0;
     pos[0] = pos[1] = 0;
    for (int i = 0; i <= 8; i++) {         // Prebehnutie členov štvorca
      if (ts == 2 && i == 2) {             // Ak je policko prazdne
        if (numbers[0][8] == 0) {
          a += 1;                          // Ak my na konci zostane a = 1 tak budem vedet ze v tom stlpci je iba 1 volny stvorcek
          pos[0] = 0;                      // Zápis pozície x pre prípad že to bude jediný volný stvorcek
          pos[1] = 8;                      // Zápis pozície y pre prípad že to bude jediný volný stvorcek
        } 
      } else {
          if (numbers[Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(0,1)) - 1][Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(1,2)) - 1] == 0) {           
            a += 1;                                                                                             // Ak my na konci zostane a = 1 tak budem vedet ze v tom stlpci je iba 1 volny stvorcek
            pos[0] = Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(0,1)) - 1;           // Zápis pozície x pre prípad že to bude jediný volný stvorcek
            pos[1] = Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(1,2)) - 1;           // Zápis pozície y pre prípad že to bude jediný volný stvorcek
          }
        }
      print(a);
    }
    print("; ");
    if (a == 1) {
      for (int i = 0; i <= 8; i++) {    //c = sucet cisel v stlpci ktorý prave riesi
        if (ts == 2 && i == 2) c += numbers[0][8]; else c += numbers[Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(0,1)) - 1][Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(1,2)) - 1];
      }
      numbers[pos[0]][pos[1]] = 45 - c; // Vloženie riešenia do správneho štvorčeka
      print("ŠTVOREC");
      print("  ");
      print(pos[0]);
      print(" ");
      print(pos[1]);
      print(" ");
      print(c);
      print(" ");
      println(45 - c);
    }
  }
}