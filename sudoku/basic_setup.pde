void bsetup()
{
  background(255);
  sudoku_overlay = loadImage("data/sudoku_overlay.png");
  image(sudoku_overlay, width / 2 - 135, height / 2 - 135, width / 2, height / 2);
  try {
    readFile();
  } catch (Exception e) {
    e.printStackTrace();
  }
  write(true);
}

public void customGUI(){}

void draw() {}