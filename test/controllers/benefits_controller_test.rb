require 'test_helper'

class BenefitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @benefit = benefits(:one)
  end

  test "should get index" do
    get benefits_url
    assert_response :success
  end

  test "should get new" do
    get new_benefit_url
    assert_response :success
  end

  test "should create benefit" do
    assert_difference('Benefit.count') do
      post benefits_url, params: { benefit: { desc1: @benefit.desc1, desc2: @benefit.desc2, desc3: @benefit.desc3, desc4: @benefit.desc4, description: @benefit.description, icon1: @benefit.icon1, icon2: @benefit.icon2, icon3: @benefit.icon3, icon4: @benefit.icon4, title1: @benefit.title1, title2: @benefit.title2, title3: @benefit.title3, title4: @benefit.title4 } }
    end

    assert_redirected_to benefit_url(Benefit.last)
  end

  test "should show benefit" do
    get benefit_url(@benefit)
    assert_response :success
  end

  test "should get edit" do
    get edit_benefit_url(@benefit)
    assert_response :success
  end

  test "should update benefit" do
    patch benefit_url(@benefit), params: { benefit: { desc1: @benefit.desc1, desc2: @benefit.desc2, desc3: @benefit.desc3, desc4: @benefit.desc4, description: @benefit.description, icon1: @benefit.icon1, icon2: @benefit.icon2, icon3: @benefit.icon3, icon4: @benefit.icon4, title1: @benefit.title1, title2: @benefit.title2, title3: @benefit.title3, title4: @benefit.title4 } }
    assert_redirected_to benefit_url(@benefit)
  end

  test "should destroy benefit" do
    assert_difference('Benefit.count', -1) do
      delete benefit_url(@benefit)
    end

    assert_redirected_to benefits_url
  end
end
