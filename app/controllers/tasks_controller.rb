class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = current_user.tasks.undiscarded.order(:priority)
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def logs
    @logs = Task.find(params[:id]).versions
  end

  def destroy
    @task = Task.find(params[:id])
    @task.discard
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :priority, :status)
  end
end
