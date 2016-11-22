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
    }
  }
//*****************ŠTVORCE*****************//
  for (int ts = 0; ts <= 8; ts++) {        // Cyklus pre vsetky štvorce
     a = 0;
     c = 0;
    for (int i = 0; i <= 8; i++) {         // Prebehnutie členov štvorca
      if (numbers[Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(0,1)) - 1][Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(1,2)) - 1] == 0) {           // Ak je policko prazdne
        a += 1;                            // Toto robim preto lebo ak na konci my zostane č. 1 tak som vlastne zistil ze v tom stlpci je iba 1 volny stvorcek
        pos[0] = Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(0,1)) - 1;                        // Zápis pozície pre prípad že to bude jediný volný stvorcek, ja viem, ak to nebude jediní volný stvorcek tak sa to prepíše, ale neni to uz potom jedno ? :D
        pos[1] = Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(1,2)) - 1;                        // Zápis pozície pre prípad že to bude jediný volný stvorcek (pokračovanie), ja viem, ak to nebude jediní volný stvorcek tak sa to prepíše, ale neni to uz potom jedno ? :D
      }
    }
    if (a == 1) {
      for (int i = 0; i <= 8; i++) {
        c += numbers[Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(0,1)) - 1][Integer.parseInt( String.valueOf(velke_stvorce[ts][i] + 11).substring(1,2)) - 1];              // Súčet čísel v tom stĺpci ktorý práve rieši
      }
      numbers[pos[0]][pos[1]] = 45 - c; // Vloženie riešenia do správneho štvorčeka
    }
  }
}