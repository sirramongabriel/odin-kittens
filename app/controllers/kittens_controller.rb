class KittensController < ApplicationController
  before_filter :get_kitten, except: [:index, :new, :create]

  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(params[:kitten])
    if @kitten.save
      redirect_to(@kitten, success: "@kitten.name created!")
    else
      render(:new, notice: 'There was an error creating your kitten.')
    end
  end

  def show
  end

  def edit
  end

  def update
    if @kitten.update_attributes(params[:kitten])
      redirect_to(@kitten, success: 'Kitten added!')
    else
      render(:edit, notice: 'There was an error adding this kitten.')
    end
  end

  def destroy
    @kitten.delete
    flash.now[:notice] = 'Your sure?'
    redirect_to(root_path)
  end

  private
  def get_kitten
    @kitten = Kitten.find(params[:id])
  end
end
