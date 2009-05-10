require File.dirname(__FILE__) + '/../test_helper'
require 'plates_controller'

# Re-raise errors caught by the controller.
class PlatesController; def rescue_action(e) raise e end; end

class PlatesControllerTest < Test::Unit::TestCase
  fixtures :plates

  def setup
    @controller = PlatesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:plates)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_plate
    old_count = Plate.count
    post :create, :plate => { }
    assert_equal old_count+1, Plate.count
    
    assert_redirected_to plate_path(assigns(:plate))
  end

  def test_should_show_plate
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_plate
    put :update, :id => 1, :plate => { }
    assert_redirected_to plate_path(assigns(:plate))
  end
  
  def test_should_destroy_plate
    old_count = Plate.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Plate.count
    
    assert_redirected_to plates_path
  end
end
