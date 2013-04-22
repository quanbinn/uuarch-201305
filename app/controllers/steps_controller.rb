class StepsController < ApplicationController

  def edit
    @task = Task.find(params[:task_id])
    @step = @task.steps.find(params[:id])
  end
 
  def update 
    @step = Step.find(params[:id])

    if @step.update_attributes(params[:step])
	     redirect_to task_path(@step.task)
    else 
	render 'edit'
    end
  end

  def create
    @task = Task.find(params[:task_id])
    @step = @task.steps.create(params[:step])
    redirect_to task_path(@task)
  end
 
  def destroy
    @task = Task.find(params[:task_id])
    @step = @task.steps.find(params[:id])
    @step.destroy
    redirect_to task_path(@task)
  end

end
