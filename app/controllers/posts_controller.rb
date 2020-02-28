class PostsController < ApplicationController
  def new
    @user = User.new
  end
end