require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test
  def test_can_create_a_node_with_rating_and_title
    node = Node.new(16, "title")
    assert_equal 16, node.rating
    assert_equal "title", node.title
  end

  def test_left_and_right_are_nil
    node = Node.new(16, "title")
    assert_equal nil, node.left
    assert_equal nil, node.right
  end
end
