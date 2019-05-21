class SchoolClassesController < ApplicationController

    before_action :get_schoolclass, only: [:show, :edit, :update, :destroy]
    
    def index
        @schoolclasses = SchoolClass.all
    end
    
    def show
    end
    
    def new
        @schoolclass=SchoolClass.new
    end
    
    def create
        @schoolclass = SchoolClass.create( schoolclass_params )
        redirect_to school_class_path(@schoolclass)
    end
    
    def edit
    end
    
    def update
     @schoolclass.update( schoolclass_params )
     redirect_to @schoolclass
    end
    
    def destroy
     @schoolclass.destroy
      redirect_to school_class_path
    end
    
private
    def get_schoolclass
        @schoolclass=SchoolClass.find(params[:id])
    end
    
    def schoolclass_params
        params.require(:school_class).permit( :title, :room_number )
    end
end