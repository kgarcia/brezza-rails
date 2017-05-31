require 'test_helper'

class LilprosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lilpro = lilpros(:one)
  end

  test "should get index" do
    get lilpros_url
    assert_response :success
  end

  test "should get new" do
    get new_lilpro_url
    assert_response :success
  end

  test "should create lilpro" do
    assert_difference('Lilpro.count') do
      post lilpros_url, params: { lilpro: { description: @lilpro.description, title: @lilpro.title } }
    end

    assert_redirected_to lilpro_url(Lilpro.last)
  end

  test "should show lilpro" do
    get lilpro_url(@lilpro)
    assert_response :success
  end

  test "should get edit" do
    get edit_lilpro_url(@lilpro)
    assert_response :success
  end

  test "should update lilpro" do
    patch lilpro_url(@lilpro), params: { lilpro: { description: @lilpro.description, title: @lilpro.title } }
    assert_redirected_to lilpro_url(@lilpro)
  end

  test "should destroy lilpro" do
    assert_difference('Lilpro.count', -1) do
      delete lilpro_url(@lilpro)
    end

    assert_redirected_to lilpros_url
  end
end
