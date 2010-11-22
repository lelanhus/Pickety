require 'test_helper'

class BricksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Brick.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Brick.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Brick.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to brick_url(assigns(:brick))
  end
  
  def test_edit
    get :edit, :id => Brick.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Brick.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Brick.first
    assert_template 'edit'
  end

  def test_update_valid
    Brick.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Brick.first
    assert_redirected_to brick_url(assigns(:brick))
  end
  
  def test_destroy
    brick = Brick.first
    delete :destroy, :id => brick
    assert_redirected_to bricks_url
    assert !Brick.exists?(brick.id)
  end
end
