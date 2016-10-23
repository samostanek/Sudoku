PImage sudoku_overlay;
BufferedReader reader;
String line;
Boolean end, shBeFullStop;
int[][] numbers = {  {0, 6, 9, 7, 1, 2, 8, 4, 5}, 
                     {0, 0, 0, 8, 3, 6, 0, 0, 0}, 
                     {8, 0, 0, 0, 0, 0, 0, 0, 7}, 
                     {3, 2, 0, 0, 5, 0, 0, 9, 4}, 
                     {9, 7, 0, 2, 0, 3, 0, 8, 6}, 
                     {6, 4, 0, 0, 8, 0, 0, 7, 2}, 
                     {2, 0, 0, 0, 0, 0, 0, 0, 9}, 
                     {0, 0, 0, 3, 2, 4, 0, 0, 0}, 
                     {0, 0, 4, 5, 7, 9, 6, 0, 0}   };
int counter, bx, by, shBe, tx, ty;
int[] canBe = new int[0];

void setup()
{
  size(800, 800);
  bsetup();
  
  tx = 0;
  ty = 0;
  shBeFullStop = false;
  if (numbers[tx][ty] == 0) {
    for (shBe = 1; shBe <= 9; shBe++) {          //Skúšanie možností
      for (int i = 0; i <= 8; i++) {             //Skontrolovanie  riadku
        if (shBeFullStop == true) break;
        if (numbers[i][ty] == shBe) { 
          shBeFullStop = true;
          break;
        }
      }
      if (shBeFullStop != true) canBe = append(canBe, shBe);
      shBeFullStop = false;
       WriteArrayLn2d(numbers, 0);
    }
    if (canBe.length == 1) {
      numbers[tx][ty] = canBe[0];
    }
  }
  write(false);
}

void draw()
{
}