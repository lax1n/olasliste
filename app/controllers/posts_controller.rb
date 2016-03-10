class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(permitted_params.merge(creator_id: current_user.id))
    if @post.save
      redirect_to @post
    else
      flash[:error] = @post.errors.to_a
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path, notice: t('post_deleted')
    else
      redirect_to @post, alert: t('post_was_not_deleted')
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(permitted_params)
      redirect_to @post, notice: t('post_updated_successfully')
    end
  end

  private
  def permitted_params
    params.require(:post).permit(:headline, :description, :delivery_details, :price, :show_phone_number, :private)
  end
end
