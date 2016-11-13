PImage sudoku_overlay;
BufferedReader reader;
String line;
Boolean end, shBeFullStop;
int[][] numbers = {  {3, 6, 9, 7, 1, 2, 8, 4, 0}, 
                     {2, 1, 7, 8, 3, 6, 4, 5, 0}, 
                     {8, 0, 0, 0, 0, 0, 0, 0, 7}, 
                     {3, 2, 0, 0, 5, 0, 0, 9, 4}, 
                     {9, 7, 0, 2, 0, 3, 0, 8, 6}, 
                     {6, 4, 0, 0, 8, 0, 0, 7, 2}, 
                     {2, 0, 0, 0, 0, 0, 0, 0, 9}, 
                     {0, 0, 0, 3, 2, 4, 0, 0, 0}, 
                     {0, 0, 4, 5, 7, 9, 6, 0, 0}   };
int[] pos = {0, 0};
int counter, bx, by, shBe, a, c;
int[] canBe = new int[0];

void setup()
{
  size(800, 800);
  bsetup();
  algorA();
  
  write(false);
}

void draw()
{
}