class PostsController < ApplicationController
    # def index
    #     @posts = Post.all
    # end
    
    def create
        post_params[:user_id] = current_user.id
        @post = Post.new(post_params)
        @post.save
        redirect_to '/'
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to '/'
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to '/'
    end
end
