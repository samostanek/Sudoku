void algorB() {
//*****************RIADKY*****************//
  Algor_B_debug_1();
  for (int tr = 0; 8 >= tr; tr++) { //<>//
    int neni, xs, ys;
    for (int shBe = 1; shBe <= 9; shBe++) {      //1
    neni = 0; xs = 0; ys = 0;
      for (int i = 0; i <= 8; i++) {             //2
        if (numbers[tr][i] == 0) {
          if (riadok(shBe, tr)) break;
          if (stlpec(shBe, i) == false && stvorec(shBe, tr, i) == false) {
            neni += 1;
            xs = tr;
            ys = i;
          }
          Algor_B_debug_2(tr, shBe, i, neni);
        }
      }
      if (neni == 1) numbers[xs][ys] = shBe;
    }
  }
////*****************STLPCE*****************//
//  //for (int ts = 0; 8 > ts; ts++) {
//    int ts = 0;
//    int neni, xs, ys;
//    for (int shBe = 1; shBe <= 9; shBe++) {      //1
//    neni = 0; xs = 0; ys = 0;
//      for (int i = 0; i <= 8; i++) {             //2
//        if (numbers[i][ts] == 0) {
//          print(shBe);
//          print(" ");
//          print(riadok(shBe, i));
//          print(" ");
//          print(stlpec(shBe, ts));
//          print(" ");
//          println(stvorec(shBe, ts, i));
//          //if (riadok(shBe, ts)) break;
//          //if (stlpec(shBe, i) == false && stvorec(shBe, ts, i) == false) {
//          //  neni += 1;
//          //  xs = ts;
//          //  ys = i;
//          //}
//        }
//      }
//      //if (neni == 1) numbers[xs][ys] = shBe;
//    }
//  }
}

boolean riadok(int i0,int r) {
  boolean v = false;
  for (int i = 0; i <= 8; i++) {   //Ak je v tom riadku i0 tak vrati TRUE inac vrati FALSE           
    if (numbers[r][i] == i0) {
      v = true;                    //Vraca FALSE //Ak to bude TRUE tak s tou premennou uz nemusi nic robit
      break;
    }
  }
  return v;
}

boolean stlpec(int i0, int s) {
  boolean v = false;
  for (int i = 0; i <= 8; i++) { //Ak je v tom stlpci i0 tak vrati TRUE inac vrati FALSE
    if (numbers[i][s] == i0) {
      v = true;
      break;
    }
  }
  return v;
}

boolean stvorec(int i_0, int posx,int posy) {
  int aa[] = {0, 0, 0};
  int ab[] = {0, 0, 0};
  boolean v = false;
  
  if (posx == 0||posx == 1||posx == 2) {int p[] = {0, 1, 2}; arrayCopy(p, aa); };    ////
  if (posx == 3||posx == 4||posx == 5) {int p[] = {3, 4, 5}; arrayCopy(p, aa); };      ////
  if (posx == 6||posx == 7||posx == 8) {int p[] = {6, 7, 8}; arrayCopy(p, aa); };        ////
  if (posy == 0||posy == 1||posy == 2) {int p[] = {0, 3, 6}; arrayCopy(p, ab); };          //// Zistí v ktorom štvorci z tých veľkých sa nachádza posx a posy
  if (posy == 3||posy == 4||posy == 5) {int p[] = {1, 4, 7}; arrayCopy(p, ab); };        ////
  if (posy == 6||posy == 7||posy == 8) {int p[] = {2, 5, 8}; arrayCopy(p, ab); };      ////
  int stvorec = findDupes(aa, ab);                                                   ////
  
  for (int i = 0; i <= 8; i++) {             // Ak je v tom stvorci i0 tak vrati TRUE inac vrati FALSE
    if (stvorec == 2 && i == 2) {
      if (numbers[0][8] == i_0) {
        v = true;
        break;
      }
    } else {
      print(numbers[Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(0,1)) - 1][Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(1,2)) - 1]);
      if (numbers[Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(0,1)) - 1][Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(1,2)) - 1] == i_0) {
        v = true;
        break;
     }
    }
  }
  return v;
}

void Algor_B_debug_1() {
  println("********************************RIADKY********************************");
  println("                          Is in :");    println("row  shBe  col      row    col    sqr");
  println("----------------------------------------");
}

void Algor_B_debug_2(int tr, int shBe, int i, int neni) {
          print("[");
          print(tr);
          print("]");
          print("  ");
          print("[");
          print(shBe);
          print("]");
          print("  ");
          print("[");
          print(i);
          print("]");
          print("      ");
          print(riadok(shBe, tr));
          if (riadok(shBe, tr) == true) print(" ");
          print("  ");
          print(stlpec(shBe, i));
          if (stlpec(shBe, i) == true) print(" ");
          print("  ");
          print(stvorec(shBe, tr, i));
          if (stvorec(shBe, tr, i) == true) print(" ");
          print("  ");
          println(neni);
}