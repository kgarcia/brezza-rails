require 'test_helper'

class WhoaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whoare = whoares(:one)
  end

  test "should get index" do
    get whoares_url
    assert_response :success
  end

  test "should get new" do
    get new_whoare_url
    assert_response :success
  end

  test "should create whoare" do
    assert_difference('Whoare.count') do
      post whoares_url, params: { whoare: { brezzastory: @whoare.brezzastory, description: @whoare.description, history: @whoare.history, mission: @whoare.mission, vision: @whoare.vision } }
    end

    assert_redirected_to whoare_url(Whoare.last)
  end

  test "should show whoare" do
    get whoare_url(@whoare)
    assert_response :success
  end

  test "should get edit" do
    get edit_whoare_url(@whoare)
    assert_response :success
  end

  test "should update whoare" do
    patch whoare_url(@whoare), params: { whoare: { brezzastory: @whoare.brezzastory, description: @whoare.description, history: @whoare.history, mission: @whoare.mission, vision: @whoare.vision } }
    assert_redirected_to whoare_url(@whoare)
  end

  test "should destroy whoare" do
    assert_difference('Whoare.count', -1) do
      delete whoare_url(@whoare)
    end

    assert_redirected_to whoares_url
  end
end
