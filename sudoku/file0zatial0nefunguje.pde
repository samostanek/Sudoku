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