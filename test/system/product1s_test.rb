require "application_system_test_case"

class Product1sTest < ApplicationSystemTestCase
  setup do
    @product1 = product1s(:one)
  end

  test "visiting the index" do
    visit product1s_url
    assert_selector "h1", text: "Product1s"
  end

  test "should create product1" do
    visit product1s_url
    click_on "New product1"

    fill_in "Description", with: @product1.description
    fill_in "Image url", with: @product1.image_url
    fill_in "Price", with: @product1.price
    fill_in "Title", with: @product1.title
    click_on "Create Product1"

    assert_text "Product1 was successfully created"
    click_on "Back"
  end

  test "should update Product1" do
    visit product1_url(@product1)
    click_on "Edit this product1", match: :first

    fill_in "Description", with: @product1.description
    fill_in "Image url", with: @product1.image_url
    fill_in "Price", with: @product1.price
    fill_in "Title", with: @product1.title
    click_on "Update Product1"

    assert_text "Product1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Product1" do
    visit product1_url(@product1)
    click_on "Destroy this product1", match: :first

    assert_text "Product1 was successfully destroyed"
  end
end
