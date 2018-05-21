class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  # GET /lessons
  def index
    @lessons = Lesson.all
  end

  # GET /lessons/1
  def show
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  # POST /lessons
  def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def lesson_params
      params.require(:lesson).permit(:title, :lesson_time)
    end
end
