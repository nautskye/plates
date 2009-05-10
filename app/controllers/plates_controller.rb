class PlatesController < ResourceController::Base
  layout "plates"
  
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
  
end
