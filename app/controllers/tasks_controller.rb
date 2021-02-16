class TasksController < ApplicationController
    def tasks
    end

    def index
      @tasks = Task.all      
    end

    def show
      @tasks = Task.find(params[:id])
    end

    def new
      @task = Task.new
    end

    def create
      @task = Task.new(task_params)
      @task.save  
    end

    def update
      @task = Task.find(params[:id])
      @restaurant.update(task_params)
      redirect_to task_path(@task)
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to task_path
      end

  private

    def task_params
      params.require(:task).permit(:title, :details, :completed)
    end

end
