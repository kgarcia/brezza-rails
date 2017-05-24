require 'test_helper'

class AlliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ally = allies(:one)
  end

  test "should get index" do
    get allies_url
    assert_response :success
  end

  test "should get new" do
    get new_ally_url
    assert_response :success
  end

  test "should create ally" do
    assert_difference('Ally.count') do
      post allies_url, params: { ally: { c1: @ally.c1, c2: @ally.c2, c3: @ally.c3, c4: @ally.c4, c5: @ally.c5, description: @ally.description, f1: @ally.f1, f2: @ally.f2, f3: @ally.f3, f4: @ally.f4, f5: @ally.f5, f6: @ally.f6, t1: @ally.t1, t2: @ally.t2, t3: @ally.t3, t4: @ally.t4, t5: @ally.t5, title: @ally.title } }
    end

    assert_redirected_to ally_url(Ally.last)
  end

  test "should show ally" do
    get ally_url(@ally)
    assert_response :success
  end

  test "should get edit" do
    get edit_ally_url(@ally)
    assert_response :success
  end

  test "should update ally" do
    patch ally_url(@ally), params: { ally: { c1: @ally.c1, c2: @ally.c2, c3: @ally.c3, c4: @ally.c4, c5: @ally.c5, description: @ally.description, f1: @ally.f1, f2: @ally.f2, f3: @ally.f3, f4: @ally.f4, f5: @ally.f5, f6: @ally.f6, t1: @ally.t1, t2: @ally.t2, t3: @ally.t3, t4: @ally.t4, t5: @ally.t5, title: @ally.title } }
    assert_redirected_to ally_url(@ally)
  end

  test "should destroy ally" do
    assert_difference('Ally.count', -1) do
      delete ally_url(@ally)
    end

    assert_redirected_to allies_url
  end
end
