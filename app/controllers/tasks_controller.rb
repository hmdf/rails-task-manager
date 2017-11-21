class TasksController < ApplicationController

before_action :load_task, only: [:edit, :update, :destroy, :show]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
  end

  def edit
  end

  def create
    Task.create(task_params)
  end

  def update
    @task.update_attributes(task_params)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

private

  def load_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :detail)
  end

end
