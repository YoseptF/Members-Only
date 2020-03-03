class PostsController < ApplicationController
  before_action :user_logged_in?, only: %i[new create]

  def index
    @posts = Post.paginate(page: params[:page],per_page: 10)
  end

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

  def user_logged_in?
    return nil if logged_in?
    flash[:danger] = 'please loggin before you can comment'
    redirect_to login_path
  end
end
