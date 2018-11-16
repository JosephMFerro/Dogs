class PostsController < ApplicationController
  before_action :set_dog

  def index
    @posts = @dog.posts
  end

  def show
  end

  def new

  end

  def create
    @post = @dog.posts.new(post_params)
    if @post.save
      redirect_to dog_posts_path(@dog)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_dog
      @dog = Dog.find(params[:dog_id])
    end
end
