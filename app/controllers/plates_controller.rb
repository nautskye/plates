class PlatesController < ResourceController::Base
  before_filter :require_user
  
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
