int[][] previous = {  {0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                     {0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                     {0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                     {0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                     {0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                     {0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                     {0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                     {0, 0, 0, 0, 0, 0, 0, 0, 0}, 
                     {0, 0, 0, 0, 0, 0, 0, 0, 0}    };

void write(boolean first) {
  if (first) textSize(32);
  
  fill(0);
  for (int ax = 0; ax <= 8; ax++) {
    by = 288 - 28;
    bx = 293 - 56;
    by += 43 * (ax + 1);
    for (int ay = 0; ay <= 8; ay++) {
      bx += 43;
      if (first) previous[ax][ay] = numbers[ax][ay];
      if (numbers[ax][ay] != 0) {
        if (previous[ax][ay] == 0 && first == false) fill(color(255, 0, 0));
        text(numbers[ax][ay], bx, by);
        fill(color(0, 0, 0));
      }
    }
  }
}

void WriteArrayLn2d(int[][] numbers, int ln) {
  for (int i = 0; i <= numbers[ln].length - 1; i++) {
    print(numbers[ln][i]);
  }
}