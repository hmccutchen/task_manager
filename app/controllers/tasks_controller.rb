class TasksController < ApplicationController






  def index
    @tasks = Task.all

  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new

  end

  def create
    @task = Task.create(task_params)
    if @task.save
      format.html { redirect_to tasks_path, notice: 'Task was successfully created!.' }

    end

    def update
    end

    def destroy
    end

    def edit
    end

    private

    def task_params

      params.require(:task).permit(:title, :details, :completed)
    end


  end
end
