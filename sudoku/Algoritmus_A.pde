void algorA() {
  for (int tr = 0; tr <= 8; tr++) {        // Cyklus pre vsetky riadky
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
        c += numbers[tr][i];              // Súčet čísel v tom riadku ktorý práve rieši
      }
      numbers[pos[0]][pos[1]] = 45 - c; // Vloženie riešenia do správneho štvorčeka
    }
  }
}