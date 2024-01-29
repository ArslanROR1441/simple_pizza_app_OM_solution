require "test_helper"

class PromotioncodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promotioncode = promotioncodes(:one)
  end

  test "should get index" do
    get promotioncodes_url
    assert_response :success
  end

  test "should get new" do
    get new_promotioncode_url
    assert_response :success
  end

  test "should create promotioncode" do
    assert_difference("Promotioncode.count") do
      post promotioncodes_url, params: { promotioncode: { discount_percentage: @promotioncode.discount_percentage, name: @promotioncode.name, promo_code: @promotioncode.promo_code } }
    end

    assert_redirected_to promotioncode_url(Promotioncode.last)
  end

  test "should show promotioncode" do
    get promotioncode_url(@promotioncode)
    assert_response :success
  end

  test "should get edit" do
    get edit_promotioncode_url(@promotioncode)
    assert_response :success
  end

  test "should update promotioncode" do
    patch promotioncode_url(@promotioncode), params: { promotioncode: { discount_percentage: @promotioncode.discount_percentage, name: @promotioncode.name, promo_code: @promotioncode.promo_code } }
    assert_redirected_to promotioncode_url(@promotioncode)
  end

  test "should destroy promotioncode" do
    assert_difference("Promotioncode.count", -1) do
      delete promotioncode_url(@promotioncode)
    end

    assert_redirected_to promotioncodes_url
  end
end
