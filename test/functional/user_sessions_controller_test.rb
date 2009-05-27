require File.dirname(__FILE__) + '/../test_helper'
require 'user_sessions_controller'

# Re-raise errors caught by the controller.
class UserSessionsController; def rescue_action(e) raise e end; end

class UserSessionsControllerTest < Test::Unit::TestCase
  fixtures :user_sessions

  def setup
    @controller = UserSessionsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:user_sessions)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_user_session
    old_count = UserSession.count
    post :create, :user_session => { }
    assert_equal old_count+1, UserSession.count
    
    assert_redirected_to user_session_path(assigns(:user_session))
  end

  def test_should_show_user_session
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_user_session
    put :update, :id => 1, :user_session => { }
    assert_redirected_to user_session_path(assigns(:user_session))
  end
  
  def test_should_destroy_user_session
    old_count = UserSession.count
    delete :destroy, :id => 1
    assert_equal old_count-1, UserSession.count
    
    assert_redirected_to user_sessions_path
  end
end
