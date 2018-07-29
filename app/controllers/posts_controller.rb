class PostsController < ApplicationController
def new
 end
 def create
    post = Post.new
    post.title = params["title"]
    post.content = params["content"]

    post.save

    redirect_to post
end

def show
        @post = Post.find params["id"]
    end
    def index
        @posts = Post.all
    end
    def destroy
        post = Post.find params["id"]
        post.delete
        
        redirect_to action: "index"
        end
end