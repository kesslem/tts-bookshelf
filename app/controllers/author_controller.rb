class AuthorController < ApplicationController
  def index
    @author = Author.all
  end

  def new
    @author = author.new
  end

  def create
    @author = author.new(author_params)

    if @author.save
        redirect_to authors_path
    else
      render 'new'
    end
  end

  def edit
    @author = author.find(params[:id])
  end

  def destroy
    @author = author.find(params["id"])

    @author.destroy

    redirect_to authors_path
  end
