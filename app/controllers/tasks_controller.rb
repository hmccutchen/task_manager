
class TasksController < ApplicationController
  # before_action :set_task, only: [:show, :new, :edit, :destroy, :create]





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
    @task = Task.new(task_params)
     @task.save
     redirect_to tasks_path
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

  def set_task
    @task = Task.find(params[:id])
  end


end
