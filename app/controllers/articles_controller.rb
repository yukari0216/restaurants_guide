class ArticlesController < ApplicationController
  before_action :set_article, only:[:edit, :show, :update, :destroy]
  def show
  end  

  def index
    @articles = Article.all.by_new
  end

  def new
    @article = Article.new 
  end  

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else 
      render 'new'
    end    
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render 'edit'
    end  
  end  

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params[:article].permit(:title, :body,)
  end

  def set_article
    @article = Article.find(params[:id])
  end  
end  