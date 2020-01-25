class CatsController < ApplicationController
  def index
    @cats = Cat.all 
    render :index 
  end

  def show
    # p params
    @cat = Cat.find_by(id: params[:id])
    # p @cat
    # render json: @cat
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    debugger
    @cat = Cat.new(cat_params)
    debugger
    if @cat.save
      redirect_to cat_url(@cat)
    end
  end

  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end


end
