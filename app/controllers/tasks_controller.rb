class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = current_user.tasks.undiscarded.order(:priority)
    @tasks = @tasks.filter_by_priority(params[:priorities]) unless params[:priorities]&.reject(&:blank?).blank?
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    
    respond_to do |format|
      if @task.save
        format.turbo_stream
        format.html { redirect_to task_url(@task) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
   
    respond_to do |format|
      if @task.update(task_params)
        format.turbo_stream
        format.html { redirect_to task_url(@task) }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def logs
    @task = Task.find(params[:id])
    @logs = @task.versions.reorder(created_at: :desc)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.discard

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to tasks_path, notice: 'Task was successfully destroyed.' }
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :priority, :status)
  end
end
