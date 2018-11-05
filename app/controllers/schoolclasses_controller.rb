class SchoolclassesController < ApplicationController

  def index
    @classes = Schoolclass.all
  end

  def show
    @c = Schoolclass.find(params[:id])
  end

  def new
    @c = Schoolclass.new
  end

  def create
    @c = Schoolclass.create(c_params)
    redirect_to @c
  end

  def edit
    @c = Schoolclass.find(params[:id])
  end

  def update
    @c = Schoolclass.find(params[:id])
    @c.update(c_params)
    redirect_to @c
  end

  def destroy
  end

  private

  def c_params
    params.require(:schoolclass).permit(:title, :room_number)
  end




end
