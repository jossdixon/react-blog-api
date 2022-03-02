class PostsController < ApplicationController
  # GET /posts or /posts.json
  def index
    @posts = Post.order("created_at DESC")
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  # POST /posts or /posts.json
  def create
    @post = Post.create(post_params)
    render json: @post
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    @post = Post.find([params[:id]])
    @post.update(post_params)
    render json: @post
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    head :no_content, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_post
    #   @post = Post.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :content, :author)
    end
end
