module BlogsHelper
  def image_url()
    request.original_url
  end
end
