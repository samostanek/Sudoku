import g4p_controls.*;
import java.util.HashSet;
PImage sudoku_overlay;
BufferedReader reader;
String line;
Boolean end, shBeFullStop;
int[][] numbers = {  {7, 0, 0, 2, 0, 6, 0, 0, 1}, 
                     {0, 9, 0, 0, 1, 0, 0, 3, 0}, 
                     {0, 0, 1, 0, 7, 0, 2, 0, 0}, 
                     {5, 0, 0, 9, 2, 8, 0, 0, 3}, 
                     {0, 6, 2, 3, 0, 1, 4, 8, 0}, 
                     {8, 0, 0, 7, 6, 4, 0, 0, 2}, 
                     {0, 0, 7, 0, 3, 0, 6, 0, 0}, 
                     {0, 2, 0, 0, 4, 0, 0, 1, 0}, 
                     {6, 0, 0, 1, 0, 2, 0, 0, 5}    };
                     
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
  //algorB();
  //write(false);
}

public void customGUI(){}

int findDupes(int[] a, int[] b) {
    HashSet<Integer> map = new HashSet<Integer>();
    int c = 0;
    for (int i : a)
        map.add(i);
    for (int i : b) {
        if (map.contains(i)) c = i;
    }
    return c;
}