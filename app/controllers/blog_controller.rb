class BlogController < ApplicationController
  def index
    @blog = Blog.all

  end

  # private
  #   def blog_params
  #     params.require(:blog).permit(:title, :body)
  #   end
  #
end
