class Spiral
  def spinit(start, width)
    array = Array.new(width) { Array.new(width) }
    max_column, max_row, min_column, min_row = width, width, -1, 0
    column, row = 0, 0
    num = start
    #right
    while num < (start + (width * width)) do
      while column < max_column do
        array[row][column] = num
        num+=1
        column+=1
      end
      max_column -= 1
      column -= 1
      row += 1
      #down
      while row < max_row do
        array[row][column] = num
        num +=1
        row +=1
      end
      max_row -= 1
      column -= 1
      row-= 1
      #left
      while column > min_column do
        array[row][column] = num
        num += 1
        column-= 1
      end
      min_column += 1
      column += 1
      row -= 1
      #up
      while row > min_row do
        array[row][column] = num
        num += 1
        row -= 1
      end
      min_row +=1
      column +=1
      row +=1
    end
    array.each do |l|
      print l.map { |n| "%0#d" % n }.join(" "), "\n"
    end
  end
end
