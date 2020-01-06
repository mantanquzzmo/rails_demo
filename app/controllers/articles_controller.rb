# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create edit update]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create(article_params)

    if article.persisted?
      redirect_to article, notice: 'Article was succesfully created.'
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)

    if article.errors.empty?
      redirect_to article, notice: "Article updated"
    else
      render 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
