class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit
  end

  private

  def article_params
    params.require(:article).permit(:title, :category, :image, :body)
  end

end