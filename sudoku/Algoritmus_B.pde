void algorB() {
//*****************RIADKY*****************//
  int tr = 0;
  int neni, xs, ys;
  int p[] = {0};
  for (int shBe = 1; shBe <= 9; shBe++) {      //1
  neni = 0; xs = 0; ys = 0;
    for (int i = 0; i <= 8; i++) {             //2
      if (numbers[tr][i] == 0) {
        print(shBe);
        print(riadok(shBe, tr));
        print(" ");
        print(stlpec(shBe, i));
        print(" ");
        println(stvorec(shBe, tr, i, p, p));     //Tie posledne dva argumeny su jedno co tam je
        //if (riadok(shBe, tr) == false) break;
        //if (stlpec(shBe, i) == false) neni += 1; 
      }
    }
  }
}

boolean riadok(int i0,int r) {
  boolean v = true;
  for (int i = 0; i <= 8; i++) {   //Ak je v tom riadku i0 tak vrati FALSE inac vrati TRUE           
    if (numbers[r][i] == i0) {
      v = false;                  //Vraca FALSE //Ak to bude TRUE tak s tou premennou uz nemusi nic robit
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

boolean stvorec(int i0, int posx,int posy, int aa[], int ab[]) {
  boolean v = false;
  
  if (posx == 1||posx == 2||posx == 3) {int p[] = {1, 2, 3}; arrayCopy(p, aa); };
  if (posx == 4||posx == 5||posx == 6) {int p[] = {4, 5, 6}; arrayCopy(p, aa); };
  if (posx == 7||posx == 8||posx == 9) {int p[] = {7, 8, 9}; arrayCopy(p, aa); };
  if (posy == 1||posy == 2||posy == 3) {int p[] = {1, 4, 7}; arrayCopy(p, ab); };
  if (posy == 4||posy == 5||posy == 6) {int p[] = {2, 5, 8}; arrayCopy(p, ab); };
  if (posy == 7||posy == 8||posy == 9) {int p[] = {3, 6, 9}; arrayCopy(p, ab); };
  int stvorec = findDupes(aa, ab);
  
  for (int i = 0; i <= 8; i++) { //Ak je v tom stlpci i0 tak vrati TRUE inac vrati FALSE
    if (numbers[Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(0,1)) - 1][Integer.parseInt( String.valueOf(velke_stvorce[stvorec][i] + 11).substring(1,2)) - 1] == i0) {
      v = true;
      break;
    }
  }
  return v;
}