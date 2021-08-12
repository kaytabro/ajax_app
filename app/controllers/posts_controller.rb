class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # コメントアウトする
  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirecrt_to action: :index # 追記する
  end
end
