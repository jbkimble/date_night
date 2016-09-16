require 'pry'
require_relative 'node'

class BinarySearchTree

  def initialize
    @root = nil
  end

  def insert(rating, title)
    node = Node.new(rating, title)
    if @root == nil
      @root = node
      0
    else
      push(node)
    end
  end

  def push(node, current = @root, counter = 1)
    if (node.rating < current.rating) && current.left == nil
      current.left = node
      # this will place your node if it has gotten to the bottom
    elsif node.rating < current.rating
      push(node, current.left, counter += 1)
      # this will get you to as far left as you need to go
    elsif (node.rating > current.rating) && current.right == nil
      current.right = node
      # this will place
    else
      push(node, current.right, counter += 1)
      #this moves to the right as far as you need to go
    end
    counter
  end

  def include?(rating, current=@root)
    # return false if current == nil
    # return true if rating == current.rating
    # rating > current.rating ? include?(rating, current.right) : include?(rating, current.left)
    if current == nil
      false
    elsif current.rating == rating
      true
    elsif rating > current.rating
      include?(rating, current.right)
    elsif rating < current.rating
      include?(rating, current.left)
    end
  end

  def depth_of(rating, current = @root, depth = 1)
    if rating == current.rating
      depth
    elsif rating < current.rating
      depth_of(rating, current.left, depth += 1)
    else
      depth_of(rating, current.right, depth += 1)
    end
    depth
  end

  def max(current=@root)
    if current.right != nil
      current = current.right
      max(current)
    else
      movie_and_value = {current.title => current.rating}
      movie_and_value
    end
  end

  def min(current=@root)
    if current.left !=nil
      current = current.left
      min(current)
    else
      movie_and_value = {current.title => current.rating}
      movie_and_value
    end
  end

  def sort

  end
end
