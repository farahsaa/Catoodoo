class TasksController < ApplicationController
  before_action :load_task,
    except: [:index]

  def index
    @tasks = Task.all
  end

  def show
  end

protected 
  def load_task
    @task = Task.find(params[:id])
  end
end

