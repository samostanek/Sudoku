void solve_palo() {
  
  boolean [][][] x = new boolean[9][9][9];
  
  x = init_x(numbers);
  
  while( not_complete(numbers) ){
    x = iterate(x);
    numbers = update_grid(x, numbers);
  }
      
}

// ----------- init boolean array -----------
boolean [][][] init_x(int[][] grid){
  boolean [][][] x = new boolean[9][9][9];
  for (int row = 0; row <= 8; row++){
    for (int col = 0; col <= 8; col++){
      for (int val = 0; val <= 8; val++){
        if(grid[row][col] != val+1 & grid[row][col] !=0) {
          x[row][col][val] = false;
        } else {
          x[row][col][val] = true;
        }  
      }
    }
  }
  return(x);
}

// ----------- debug print -----------------
void print_val(boolean [][][] x, int row, int col){
  for (int val = 0; val <= 8; val++){
    if(x[row-1][col-1][val]) println(val + 1);
  }
}

// ---------- update grid -----------------
int[][] update_grid(boolean [][][] x, int[][] grid){
  for (int row = 1; row <= 9; row++){
    for (int col = 1; col <= 9; col++){
      grid[row-1][col-1] = fill_value(x, row, col);
    }
  }
  return(grid);
}

int fill_value(boolean [][][] x, int row, int col){
  int value = 0;
  int count = 0;
  for (int val = 1; val <= 9; val++){
    if (x[row-1][col-1][val-1]){
      value = val;
      count += 1;
    }  
  }
  if (count > 1) value = 0;
  return(value);
}

//----------- check cell -----------
boolean[][][] check_cell(boolean[][][] x, int[][] grid, int row, int col){
  int temp = 0;
  //check row
  for (int c = 1; c <= 9; c++){
    temp = grid[row-1][c-1];
    if( temp > 0 & c != col) x[row-1][col-1][temp-1]=false;
  }  
  //check column
  for (int r = 1; r <= 9; r++){
    temp = grid[r-1][col-1];
    if( temp > 0 & r != row) x[row-1][col-1][temp-1]=false;
  } 
  //check square
  for (int c = 1; c <= 9; c++){
    for (int r = 1; r <= 9; r++){
      temp = grid[r-1][c-1];
      if( temp > 0 & r != row & c != col &
         ((r-1)/3) == ((row-1)/3) & ((c-1)/3) == ((col-1)/3)) {
         x[row-1][col-1][temp-1]=false;
      }     
    }
  }    
  return(x);
} 

boolean[][][] iterate(boolean[][][] x){
  for (int row = 1; row <= 9; row++){
    for (int col = 1; col <= 9; col++){
      x = check_cell(x, numbers, row, col);
    }
  }
  return(x);
}

// ----------- is_complete -----------
boolean not_complete(int[][] grid){
  boolean complete = true;
  for (int row = 1; row <= 9; row++){
    for (int col = 1; col <= 9; col++){
      if(grid[row-1][col-1] == 0) complete=false;
    }
  }
  return(!complete);
}