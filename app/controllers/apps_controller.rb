class AppsController < ApplicationController
  def index
    @apps = Post.all
  end

  def new
    @app = Post.new
  end

  def create
    @app = Post.new(app_params)
    if @app.save
      redirect_to apps_path, notice: 'コメントを投稿しました！'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def app_params
    params.require(:app).permit(:content)
  end
end
