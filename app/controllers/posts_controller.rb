class PostsController < ApplicationController
  def index
    # @posts = [
    #   {id: 1, name: "POST 1", address: "http://warpas.blog"},
    #   {id: 2, name: "POST 2", address: "nie"},
    #   {id: 3, name: "POST 3", address: "nie, zamsz"},
    #   {id: 4, name: "POST 4", address: "nie, zamsz"},
    #   {id: 5, name: "POST 5", address: "nie, zamsz"},
    #   {id: 6, name: "POST 6", address: "nie, zamsz"}
    # ]
    # Post.create(name: "POST 1")
    # p params
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    # @zmienna = destroy_post_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to(@post)
    else
      render(:new)
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to(posts_path, status: :see_other)
  end

  private

  def post_params
    params.require(:post).permit(:name)
  end

end
