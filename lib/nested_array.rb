# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"
]

  
def assembled_matrix
 
 

   produce=[CONVENTIONAL_PRODUCE,ORGANIC_PRODUCE]

  
  # Build an array that contains both of the above arrays
  # This matrix will represent a produce storage room
  # Organic standards require that organic products be stored ABOVE conventional, not the other way around
  # Make sure conventional produce is first, on the 'zeroth' / 'bottom' shelf
end


def sorted_matrix
     produce=[CONVENTIONAL_PRODUCE.sort,ORGANIC_PRODUCE.sort]

  # Using Array literal syntax only, build another nested array that 
  # uses the arrays of conventional and organic produce as before.
  # However, this time, sort each internal array alphabetically by the first character
end

def matrix_lookup(matrix, row, column)
 

  matrix[row][column]
  
  # Given any matrix (array of arrays), a row index and a column index, 
  # Return the matrix's content at that row and and column
end



def matrix_update(matrix, row, column, new_value)
  # Given any matrix (array of arrays), a row index and a column index, 
  # Update the matrix location at that row and column to have the value of new_value
  # Return the updated matrix
  
  matrix_update=assembled_matrix
  matrix_update[row]column]="Lemons"
end

describe 'When a learning to update cells in nested arrays,' do
  describe 'when given a matrix, row, column, and new_value argument,' do
    it 'the matrix_update method returns an updated matrix' do
      local_copy_of_matrix = assembled_matrix.dup
      result = matrix_update(local_copy_of_matrix, 0, 2, "Lemons")
      expect(result[0]).to eq(["Grapefruit", "Pineapple", "Lemons", "Watermelon", "Eggplant"])
      result = matrix_update(result, 0, 2, "Onions")
      expect(result[0]).to eq(["Grapefruit", "Pineapple", "Onions", "Watermelon", "Eggplant"])
