require "application_system_test_case"

class PromotioncodesTest < ApplicationSystemTestCase
  setup do
    @promotioncode = promotioncodes(:one)
  end

  test "visiting the index" do
    visit promotioncodes_url
    assert_selector "h1", text: "Promotioncodes"
  end

  test "should create promotioncode" do
    visit promotioncodes_url
    click_on "New promotioncode"

    fill_in "Discount percentage", with: @promotioncode.discount_percentage
    fill_in "Name", with: @promotioncode.name
    fill_in "Promo code", with: @promotioncode.promo_code
    click_on "Create Promotioncode"

    assert_text "Promotioncode was successfully created"
    click_on "Back"
  end

  test "should update Promotioncode" do
    visit promotioncode_url(@promotioncode)
    click_on "Edit this promotioncode", match: :first

    fill_in "Discount percentage", with: @promotioncode.discount_percentage
    fill_in "Name", with: @promotioncode.name
    fill_in "Promo code", with: @promotioncode.promo_code
    click_on "Update Promotioncode"

    assert_text "Promotioncode was successfully updated"
    click_on "Back"
  end

  test "should destroy Promotioncode" do
    visit promotioncode_url(@promotioncode)
    click_on "Destroy this promotioncode", match: :first

    assert_text "Promotioncode was successfully destroyed"
  end
end
