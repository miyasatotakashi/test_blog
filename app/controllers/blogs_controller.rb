class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def index
    @blogs = Blog.all
  end

  def edit
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      render :new
    end
  end

  def confirm
    @blog = Blog.new(blog_params)
    render :new if @blog.invalid?
  end

  private

  def blog_params
    params.require(:blog).permit(:name, :content)
  end

end
