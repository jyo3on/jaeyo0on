class BoardController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def create
    new_post = Post.new(title: params[:title], content: params[:content])
    
    if new_post.save
      redirect_to '/'
    else
      render :text => new_post.errors.messages[:title].first
    end
  end

  def new
  end

  def edit
  end

  def destroy
  end
  
  def comment_create
    @comment = Comment.new(post_id: params[:post_id], content: params[:xylitol])
    @comment.save
    redirect_to :back
  end
  
end
