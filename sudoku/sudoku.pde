import g4p_controls.*;
PImage sudoku_overlay;
BufferedReader reader;
String line;
Boolean end, shBeFullStop;
int[][] numbers = {  {0, 6, 9, 7, 1, 2, 8, 4, 5}, 
                     {2, 1, 7, 8, 3, 6, 4, 5, 0}, 
                     {8, 5, 3, 2, 1, 4, 9, 3, 7}, 
                     {3, 2, 8, 7, 5, 0, 1, 9, 4}, 
                     {9, 7, 5, 2, 4, 3, 0, 8, 6}, 
                     {6, 4, 0, 1, 8, 9, 3, 7, 2}, 
                     {4, 7, 1, 4, 5, 0, 8, 6, 9}, 
                     {7, 0, 0, 1, 2, 4, 3, 5, 9}, 
                     {1, 6, 4, 5, 7, 9, 2, 0, 3}    };
                     
int[][] velke_stvorce = {{00,01,02,10,11,12,20,21,22}, {03,04,05,13,14,15,23,24,25}, {06,07,108,16,17,18,26,27,28},
                         {30,31,32,40,41,42,50,51,52}, {33,34,35,43,44,45,53,54,55}, {36,37,38,46,47,48,56,57,58},
                         {60,61,62,70,71,72,80,81,82}, {63,64,65,73,74,75,83,84,85}, {66,67,68,76,77,78,86,87,88} };
int[] pos = {0, 0};
int counter, bx, by, shBe, a, c;
int[] canBe = new int[0];

void setup()
{
  size(800, 800, JAVA2D);
  bsetup();    
  createGUI();
  customGUI();
}

void draw()
{
}

void mousePressed()
{
  //algorA();
  //write(false);
}

public void customGUI(){
}