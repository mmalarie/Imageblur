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

    return coords   
  end

  def blur(distance = 1)
    onescoords = ones
    @image.each_with_index do |row,y1|
      row.each_with_index  do |pixel, x1|
          onescoords.each do |set|
            x2 = set[0]
            y2 = set[1]
            manhattan  = (x1-x2).abs + (y1-y2).abs
            if manhattan <= distance 
              @image[y1][x1] = 1
            end

          end
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

image.blur (1)

image.output_image