PImage sudoku_overlay;
BufferedReader reader;
String line;
Boolean end;
int[][] numbers = {  {0, 0, 9, 7, 1, 2, 8, 0, 0}, 
                     {0, 0, 0, 8, 3, 6, 0, 0, 0}, 
                     {8, 0, 0, 0, 0, 0, 0, 0, 7}, 
                     {3, 2, 0, 0, 5, 0, 0, 9, 4}, 
                     {9, 7, 0, 2, 0, 3, 0, 8, 6}, 
                     {6, 4, 0, 0, 8, 0, 0, 7, 2}, 
                     {2, 0, 0, 0, 0, 0, 0, 0, 9}, 
                     {0, 0, 0, 3, 2, 4, 0, 0, 0}, 
                     {0, 0, 4, 5, 7, 9, 6, 0, 0}   };
int counter, bx, by, shBe, tx, ty, canBe;

void setup()
{
  size(800, 800);
  background(255);
  sudoku_overlay = loadImage("sudoku_overlay.png");
  image(sudoku_overlay, width / 2 - 135, height / 2 - 135, width / 2, height / 2);

  //try {
  //  readFile();
  //} catch(Exception e) {
  //  e.printStackTrace();
  //  exit();
  //}

  write(true);
  tx = 0;
  ty = 0;
  if (numbers[tx][ty] == 0) {
    for (shBe = 1; shBe <= 9; shBe++) {
      for (int i = 0; i <= 8; i++) {
        if (numbers[i][ty] == shBe) break;
        canBe = shBe;
      }
    }
  }
}











void draw()
{
  //println("x: "+mouseX+" y: "+mouseY, 10, 15);
}

void readFile() throws Exception
{
  end = false;
  reader = createReader("data/input.txt");
  counter = 0;
  while (!end) {
    try {
      line = reader.readLine();
    } 
    catch (IOException e) {
      e.printStackTrace();
      line = null;
    }
    if (line == null) {
      end = true;
      if (counter >= 9) {
      } else throw new Exception("File has wrong format !");
    } else {
      for (int i = 0; i <= 8; i++) {
        //   numbers[i][counter] = 0;                                    // NEFUNGUJE
      }
    }
    counter++;
  }
}

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