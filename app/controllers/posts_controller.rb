class PostsController < ApplicationController

  before_action :check_signed_in, except: :show

  def index



    #@posts = Post.all

    @posts = current_user.feed
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new(user_id: current_user)
  end

  def create
    @post = current_user.posts.build post_params
    if @post.save
      redirect_to @post
    else
      render "new"
    end
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:image, :description, :user_id)
  end


  def check_signed_in
    redirect_to signin_path if not signed_in?
  end
end
