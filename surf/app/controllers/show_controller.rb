class ShowController < ApplicationController

  before_action do
    @posts = []
    @posts << Post.new("ANOTHER COOL POST", "waffles.jpg", "waffles are the best...")
    @posts << Post.new("POST TITLE", "pancakes.jpg", "pancakes are the best...")
    @posts << Post.new("HERE'S ANOTHER LONGER POST TITLE", "bacon.jpg", "bacon is the best...")
    @posts << Post.new("OH COOL A POST!", "bacon.jpg", "bacon is the best...")

    #     Post.new("TITLE", "IMAGE_NAME.jpg", "CONTENT")
  end

  def blogs # is an action

  end
end

class Post
  attr_accessor :title, :image, :content

  def initialize(title, image, content)
    @title = title
    @image = image
    @content = content
  end

end
