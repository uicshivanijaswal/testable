# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save a post without title" do
    post = Post.new
    assert_not post.save, "Saved a post without a title" 
  end 

  test "should save the post with a title" do
    post = Post.new(title: "Test")
    assert post.save, "Saved a post with a title presence"
  end 
end
