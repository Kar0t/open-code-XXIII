class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html, :json

  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def show
    respond_with(@post)
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user
    @post.save
    redirect_to :root
  end

  def update
    @post.update(post_params)
    redirect_to :root
  end

  def destroy
    @post.destroy
    redirect_to :root
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :post)
    end
end
