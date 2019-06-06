class TasksController < ApplicationController
  before_action :load_task,
    except: [:index]

  def index
    @tasks = Task.all
  end

  def show
    @schedules = @task.schedules.order(:scheduled_at).all
  end

protected 
  def load_task
    @task = Task.find(params[:id])
  end
end

