class PostsController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc).limit(10)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
      @post = Post.new(post_params)
      @post.user = current_user
      if @post.save
        redirect_to posts_path, notice: 'Your post was created successfully'
      else
        render :new
      end
  end

    private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
