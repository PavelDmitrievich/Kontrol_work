class PostsController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    @post = @image.posts.create(post_params)

    respond_to do |format|
      format.html {redirect_to @image}
      format.js {}
    end
  end

  def destroy
    @image = Image.find(params[:image_id])
    Post.destroy(params[:id])

    respond_to do |format|
      format.html {redirect_to @image}
      format.js {}
    end
  end

  private

  def post_params
    params.require(:post).permit(:rating, :body, :user_id)
  end
end
