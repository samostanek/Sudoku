void write(boolean first) {
  if (first) textSize(32);
  
  fill(0);
  for (int ax = 0; ax <= 8; ax++) {
    by = 288 - 28;
    bx = 293 - 56;
    by += 43 * (ax + 1);
    for (int ay = 0; ay <= 8; ay++) {
      bx += 43;
      if (numbers[ax][ay] != 0) text(numbers[ax][ay], bx, by);
    }
  }
}

void WriteArrayLn2d(int[][] numbers, int ln) {
  for (int i = 0; i <= numbers[ln].length - 1; i++) {
    print(numbers[ln][i]);
  }
}