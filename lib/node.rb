class Node
  attr_accessor :rating, :title, :left, :right
  
  def initialize(rating, title)
    @rating = rating
    @title = title
    @left = nil
    @right = nil
  end

end
