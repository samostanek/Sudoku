int d_1, d_2;

void algorB() {
////*****************RIADKY*****************//
//  for (int tr = 0; 8 > tr; tr++) {
//    int neni, xs, ys;
//    int p0[] = {0};
//    for (int shBe = 1; shBe <= 9; shBe++) {      //1
//    neni = 0; xs = 0; ys = 0;
//      for (int i = 0; i <= 8; i++) {             //2
//        if (numbers[tr][i] == 0) {
//          print(shBe);
//          print(" ");
//          print(riadok(shBe, tr));
//          print(" ");
//          print(stlpec(shBe, i));
//          print(" ");
//          println(stvorec(shBe, tr, i));
//          if (riadok(shBe, tr)) break;
//          if (stlpec(shBe, i) == false && stvorec(shBe, tr, i) == false) {
//            neni += 1;
//            xs = tr;
//            ys = i;
//          }
//        }
//      }
//      if (neni == 1) numbers[xs][ys] = shBe;
//    }
//  }
//*****************STLPCE*****************//
  for (int ts = 0; 8 > ts; ts++) {
    int neni, xs, ys;
    int p0[] = {0};
    for (int shBe = 1; shBe <= 9; shBe++) {      //1
    neni = 0; xs = 0; ys = 0;
      for (int i = 0; i <= 8; i++) {             //2
        if (numbers[i][ts] == 0) {
          print(shBe);
          print(" ");
          print(riadok(shBe, ts));
          print(" ");
          print(stlpec(shBe, i));
          print(" ");
          println(stvorec(shBe, ts, i));
          //if (riadok(shBe, ts)) break;
          //if (stlpec(shBe, i) == false && stvorec(shBe, ts, i) == false) {
          //  neni += 1;
          //  xs = ts;
          //  ys = i;
          //}
        }
      }
      //if (neni == 1) numbers[xs][ys] = shBe;
    }
  }
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
  if (posx == 0||posx == 1||posx == 2) {int p[] = {0, 1, 2}; arrayCopy(p, aa); };
  if (posx == 3||posx == 4||posx == 5) {int p[] = {3, 4, 5}; arrayCopy(p, aa); };
  if (posx == 6||posx == 7||posx == 8) {int p[] = {6, 7, 8}; arrayCopy(p, aa); };
  if (posy == 0||posy == 1||posy == 2) {int p[] = {0, 3, 6}; arrayCopy(p, ab); }; //<>//
  if (posy == 3||posy == 4||posy == 5) {int p[] = {1, 4, 7}; arrayCopy(p, ab); };
  if (posy == 6||posy == 7||posy == 8) {int p[] = {2, 5, 8}; arrayCopy(p, ab); };
  int stvorec = findDupes(aa, ab);
  
  for (int i = 0; i <= 8; i++) { //Ak je v tom stlpci i0 tak vrati TRUE inac vrati FALSE
  d_1 = Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(0,1)) - 1;
  d_2 = Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(1,2)) - 1;
    if (numbers[Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(0,1)) - 1][Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(1,2)) - 1] == i_0) {
      v = true;
      break;
    }
  }
  return v;
}