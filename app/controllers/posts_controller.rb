class PostsController < ApplicationController
  def index
    @posts = Post.all(:order => "created_at DESC")
    respond_to do |format|
      format.html
    end
  end

  def create
    @post = Post.create(:message => params[:message])
    flash[:notice] = "Your message has been successfully posted"
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path }
        format.js
      else
        flash[:notice] = "Message failed to save."
        format.html { redirect_to posts_path }
      end
    end
  end

  def destroy
     @post = Post.destroy(params[:id])
     flash[:notice] = "Your message has been successfully deleted"
     redirect_to root_path
  end
end
