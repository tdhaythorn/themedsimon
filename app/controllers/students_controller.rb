class StudentsController < ApplicationController
  
  before_action :require_user, only: [:index, :show]

  def index
    #@students = Student.all
  end

  def create
  end

  def delete
  end

  def update
  end
end
