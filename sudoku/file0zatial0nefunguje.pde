String line;

void readFile() throws Exception {
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
      if (counter >= 9) throw new Exception("File has wrong format !");
    } else {
      //println(line);
      for (int i = 0; i <= 8; i++){ 
        //println(int(line.substring(i, i + 1)));
        numbers[counter][i] = int(line.substring(i, i + 1));
        println(numbers[counter][i]);
      }
    }  
          
  }
  //return(numbers);
}