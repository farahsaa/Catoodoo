class SchedulesController < ApplicationController
  before_action :load_schedule,
    except: [:new, :create]

  before_action :build_schedule,
    except: [:new, :create]
 
  
  def index
  @schedule = Schedule.all
  end

  def new
  end
  
  def create
    @schedule.save!
    redirect_to schedule_path(@schedule)
  rescue ActiveRecord::RecordInvalid
    render(action: "new")
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
  
end
