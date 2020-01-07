class Image

  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |row|
      #this is how i looped over each element in the array
      #row.each do |col|
       # puts col 
      #end  
      puts row.join
    end
  end

  def ones
    coords = []
    @image.each_with_index do |row, y|
      row.each_with_index  do |pixel, x|
        if pixel == 1 
          coords << [x,y]
        end

      end

    end 
    puts coords.inspect
    return coords   
  end

  def blur
    ones.each do |set|
      x = set[0]
      y = set[1]
      #this one does the pixel above
      if y-1 >= 0 
        @image[y-1][x] = 1
      end
      #below
      if y+1 < @image.length 
        @image[y+1][x] = 1
      end
      #right
      if x+1 < @image[y].length
        @image[y][x+1] = 1
      end
      #left
      if x-1 >= 0
        @image[y][x-1] = 1
      end 
    end
  end


end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image

image.blur

image.output_image