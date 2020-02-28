class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = 'You succesfully made a new comment'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy; end

  private

  def post_params
    params.require(:post).permit(:user_id, :content)
  end
end
