class StudentsController < ApplicationController
  before_action :student_params, only: [:update, :create, :update]
  before_action :get_student, only: [:show, :update, :edit]
  
  def new
    @student = Student.new
  end

  def create
    student = Student.create student_params
    redirect_to student
  end

  def show
    
  end

  def edit
    
  end

  def update
    @student.update student_params
    redirect_to @student
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
