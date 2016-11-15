PImage sudoku_overlay;
BufferedReader reader;
String line;
Boolean end, shBeFullStop;
int[][] numbers = {  {0, 6, 9, 7, 1, 2, 8, 4, 5}, 
                     {2, 1, 7, 8, 3, 6, 4, 5, 0}, 
                     {8, 5, 0, 2, 1, 4, 9, 3, 7}, 
                     {3, 2, 8, 7, 5, 0, 1, 9, 4}, 
                     {9, 7, 5, 2, 4, 3, 0, 8, 6}, 
                     {6, 4, 0, 1, 8, 9, 3, 7, 2}, 
                     {4, 7, 1, 4, 5, 0, 8, 6, 9}, 
                     {7, 0, 0, 1, 2, 4, 3, 5, 9}, 
                     {1, 6, 4, 5, 7, 9, 2, 0, 3}   };
int[] pos = {0, 0};
int counter, bx, by, shBe, a, c;
int[] canBe = new int[0];

void setup()
{
  size(800, 800);
  bsetup();
}

void draw()
{
}

void mousePressed()
{
  algorA();
  write(false);
}