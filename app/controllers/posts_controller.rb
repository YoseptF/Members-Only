class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    user = session[:user_id]
    @post = Post.new(user_id: user, content: post_params[:content])
    if @post.save
      flash[:success] = 'You succesfully made a new comment'
      redirect_to root_path
    else
      flash[:success] = session[:user_id]
      render 'new'
    end
  end

  def destroy; end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
