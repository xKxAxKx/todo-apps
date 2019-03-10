module Api
  class PostsController < ApplicationController
    # GET /posts
    def index
      @posts = Post.order(created_at: :desc)
      render json: @posts
    end

    # GET /posts/:id
    def show
      @post = Post.find(params[:id])
      render json: @post
    end

    # POST /posts
    def create
      @post = Post.new(post_params)
      if post.save
        render json: @post
      else
        render json: @post.error
      end
    end

    # DELETE /posts/:id
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      render json: @post
    end

    # PUT or PATCH /posts/:id
    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
        render json: @post
      else
        render json: @post.error
      end
    end

    private
      def post_params
        params.require(:post).permit(:title)
      end
  end
end
