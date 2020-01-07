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






end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image