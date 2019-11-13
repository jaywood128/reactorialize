require 'test_helper'

class TutorialModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutorial_module = tutorial_modules(:one)
  end

  test "should get index" do
    get tutorial_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_tutorial_module_url
    assert_response :success
  end

  test "should create tutorial_module" do
    assert_difference('TutorialModule.count') do
      post tutorial_modules_url, params: { tutorial_module: {  } }
    end

    assert_redirected_to tutorial_module_url(TutorialModule.last)
  end

  test "should show tutorial_module" do
    get tutorial_module_url(@tutorial_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutorial_module_url(@tutorial_module)
    assert_response :success
  end

  test "should update tutorial_module" do
    patch tutorial_module_url(@tutorial_module), params: { tutorial_module: {  } }
    assert_redirected_to tutorial_module_url(@tutorial_module)
  end

  test "should destroy tutorial_module" do
    assert_difference('TutorialModule.count', -1) do
      delete tutorial_module_url(@tutorial_module)
    end

    assert_redirected_to tutorial_modules_url
  end
end
