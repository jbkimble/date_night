require 'simplecov'
SimpleCov.start #these two line have to be at the top!
require_relative '../lib/binary_search_tree.rb'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  def test_tree_object_exists
    tree = BinarySearchTree.new

    assert_equal BinarySearchTree, tree.class
  end

  def test_can_insert_into_tree
    tree = BinarySearchTree.new
    assert_equal 0, tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 1, tree.insert(16, "Johnny English")
    assert_equal 1, tree.insert(92, "Sharknado 3")
    assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace")
  end

  def test_can_check_what_is_included_in_trees
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    tree.insert(82, "Shawshank Redemption")
    tree.insert(11, "Scary Movie")
    tree.insert(98, "Kung Fu Panda")
    tree.insert(42, "Anchorman")

    assert_equal true, tree.include?(16)
    assert_equal false, tree.include?(72)
    assert_equal true, tree.include?(98)
    assert_equal false, tree.include?(14)
  end

  def test_can_report_the_depth_where_a_score_appears
    tree = BinarySearchTree.new
    tree.insert(92, "The Matrix")
    tree.insert(50, "Kung Fu Panda")

    assert_equal 1, tree.depth_of(92)
    assert_equal 2, tree.depth_of(50)
  end

  def test_can_find_movie_with_highest_score
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal ({"Sharknado 3" => 92}), tree.max
  end

  def test_min_can_find_minimum_rating
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal ({"Johnny English" => 16}), tree.min
  end

  # def test_sort_returns_array_of_sorted_hashes
  #   tree = BinarySearchTree.new
  #   tree.insert(61, "Bill & Ted's Excellent Adventure")
  #   tree.insert(16, "Johnny English")
  #   tree.insert(92, "Sharknado 3")
  #   tree.insert(50, "Hannibal Buress: Animal Furnace")
  #
  #   assert_equal [{"Johnny English"=>16}, {"Hannibal Buress: Animal Furnace"=>50}, {"Bill & Ted's Excellent Adventure"=>61}, {"Sharknado 3"=>92}], tree.sort
  # end
end
