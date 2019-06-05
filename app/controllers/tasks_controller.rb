class TasksController > ApplicationController
  before_action :load_task,
    except: [:index, :show]

  before_action :build_task,
  except: [:index, :show]

  def index
  end
  def show
  end

end