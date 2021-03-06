class TasksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_params)
    if @task.save
      flash[:notice] = "Task successfully saved!"
      redirect_to list_path(@task.list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params[:task])
      flash[:notice] = "Task successfully updated!"
      redirect_to lists_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      flash[:alert] = "Task successfully deleted!"
    end
    redirect_to lists_path
  end

  private
  def task_params
    params.require(:task).permit(:description)
  end
end
