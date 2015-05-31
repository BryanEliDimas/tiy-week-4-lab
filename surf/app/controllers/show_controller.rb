class ShowController < ApplicationController

  before_action do
    @posts = []
    @posts << Post.new("A FANTASTIC ENGADGING HEADLINE GOES HERE", "THIS ONE HAS NO IMAGE.jpg", "THE LATEST POST CONTENT")
    @posts << Post.new("ANOTHER COOL POST", "c1.jpg", "SECOND POST CONTENT")
    @posts << Post.new("POST TITLE", "c2.jpg", "THIRD POST CONTENT")
    @posts << Post.new("HERE'S ANOTHER LONGER POST TITLE", "c3.jpg", "FOURTH POST CONTENT")
    @posts << Post.new("OH COOL A POST!", "c4.jpg", "FIFTH POST CONTENT")
  end

  def blogs # is an action
    @single_post = params[:post]  # what I named the param in the routes file
    @the_index = @posts.index(@posts.find {|post| post.title == params[:post]})   # find the index of the blog post title that matches the url
  end

  def index # is an action, our default page

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
