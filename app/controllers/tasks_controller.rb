class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
    # The above simply creates a new instance of Task, the key value pairs of which need to be defined. Nothing has been saved at this point yet! 
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # the above would work if it were not for a built in security feature from rails which imposes the use of Strong Params.
  end

  def update
    @task.find(param[:id])
    
  end
  
  

private

  def task_params
    params.require(:task).permit(:title, :detail)
  end


end
