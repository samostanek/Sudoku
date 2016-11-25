void algorB() {
//*****************RIADKY*****************//
  int tr = 0;
  
  for (int shBe = 1; shBe <= 9; shBe++) {      //1
    for (int i = 0; i <= 8; i++) {             //2
      if (numbers[tr][i] == 0) {
        print(shBe);
        println(riadok(shBe, tr));
        if (riadok(shBe, tr) == false) break;
        
      }
    }
  }
}

boolean riadok(int i0,int r) {
  boolean v = true;
  for (int i = 0; i <= 8; i++) {
    if (numbers[r][i] == i0) {
      v = false;
      break;
    }
    if (i == 8) v = true;
  }
  return v;
}