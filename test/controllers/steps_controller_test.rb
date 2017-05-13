require 'test_helper'

class StepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step = steps(:one)
  end

  test "should get index" do
    get steps_url
    assert_response :success
  end

  test "should get new" do
    get new_step_url
    assert_response :success
  end

  test "should create step" do
    assert_difference('Step.count') do
      post steps_url, params: { step: { description1: @step.description1, description2: @step.description2, description3: @step.description3, description4: @step.description4, title1: @step.title1, title2: @step.title2, title3: @step.title3, title4: @step.title4 } }
    end

    assert_redirected_to step_url(Step.last)
  end

  test "should show step" do
    get step_url(@step)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_url(@step)
    assert_response :success
  end

  test "should update step" do
    patch step_url(@step), params: { step: { description1: @step.description1, description2: @step.description2, description3: @step.description3, description4: @step.description4, title1: @step.title1, title2: @step.title2, title3: @step.title3, title4: @step.title4 } }
    assert_redirected_to step_url(@step)
  end

  test "should destroy step" do
    assert_difference('Step.count', -1) do
      delete step_url(@step)
    end

    assert_redirected_to steps_url
  end
end
