class SchoolClassesController < ApplicationController
  before_action :class_params, only: [:update, :create, :update]
  before_action :get_class, only: [:show, :update, :edit]
  
  def new
    @class = SchoolClass.new
  end

  def create
    _class = SchoolClass.create class_params
    redirect_to _class
  end

  def show
    
  end

  def edit
    
  end

  def update
    @class.update class_params
    redirect_to @class
  end

  private

  def get_class
    @class = SchoolClass.find(params[:id])
  end

  def class_params
    params.require(:school_class).permit(:room_number, :title)
  end
end
