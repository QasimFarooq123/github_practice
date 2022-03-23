# frozen_string_literal: true

# students_controller.rb
class StudentsController < ApplicationController
  include ApplicationHelper
  before_action :set_student, only: %i[show edit update destroy]
  helper_method :display_fullname
  def index
    @students = Student.all.page(params[:page]).per(15)
  end

  def new
    @students = Student.new
  end

  def create
    @students = Student.new(student_params)
    if @students.save
      redirect_to students_path, notice: 'student has been created sucessfully'
    else
      render :new
    end
  end

  def show; end

  def edit
    display_fullname(@students.first_name)
  end

  def update
    if @students.update(student_params)
      redirect_to student_path(@students), notice: 'student has been updated sucessfully'
    else
      render :edit
    end
  end

  def destroy
    @students.destroy
    redirect_to students_path, notice: 'student has been deleted sucessfully'
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def set_student
    @students = Student.find(params[:id])
  end

  def display_fullname(first_name)
    puts "#{first_name} farooq"
  end
end
