class SchedulesController < ApplicationController
  before_action :load_schedule,
    except: [:new, :create]

  before_action :build_schedule,
    only: [:new, :create]
 
  
  def index
    @schedule = Schedule.all
  end

  def new
    @tasks = Task.all
  end
  
  def create
    @schedule.save!
    redirect_to schedule_path(@schedule)
  rescue ActiveRecord::RecordInvalid
    delegate_render("new")
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @schedule.destroy
    redirect_to schedule_path
  end

  protected 
  def load_schedule
    @schedule = Schedule.find(params[:id])
  end

  def build_schedule
    @schedule = Schedule.new(schedule_params)
    if (params[:cat_id])
      @schedule.cat_id = params[:cat_id]
    end
  end 

  def schedule_params
    params.fetch(:schedule, { }).permit(:cat_id, :task_id)
  end
end
