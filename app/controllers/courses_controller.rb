class CoursesController < ApplicationController

  def new
  	@course = Course.new
  end
  def show
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      # 处理注册成功的情况
      flash[:success] = "Upload your course!"
      redirect_to @course
    else
      render 'new'
    end
  end

  private

    def course_params
      params.require(:course).permit(:course_title, :originating_department, :course_code,
                                   :credit_value, :course_type, :semester,
                                   :teaching_language, :instructor, :in_email,
                                   :tutor, :tu_email, :outline)
    end
end
