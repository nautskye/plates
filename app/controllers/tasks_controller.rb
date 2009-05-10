class TasksController < ResourceController::Base
  layout "plates"
  belongs_to :plate
  
  def create
    build_object
    load_object
    before :create
    if object.save
      after :create
      redirect_to root_url
    else
      after :create_fails
      set_flash :create_fails
      response_for :create_fails
    end
  end
  
  def update
    load_object
    before :update
    if object.update_attributes object_params
      after :update
      redirect_to root_url
    else
      after :update_fails
      set_flash :update_fails
      response_for :update_fails
    end
  end
  
  def destroy
    load_object
    before :destroy
    if object.destroy
      after:destroy
      redirect_to root_url
    else
      after :destroy_fails
      set_flash :destroy_fails
      response_for :destroy_fails
    end
  end
end
