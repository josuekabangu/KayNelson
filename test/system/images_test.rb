require "application_system_test_case"

class ImagesTest < ApplicationSystemTestCase
  setup do
    @image = images(:one)
  end

  test "visiting the index" do
    visit images_url
    assert_selector "h1", text: "Images"
  end

  test "creating a Image" do
    visit images_url
    click_on "New Image"

    fill_in "Category", with: @image.category_id
    fill_in "Image", with: @image.image
    fill_in "Image content type", with: @image.image_content_type
    fill_in "Image description", with: @image.image_description
    fill_in "Image file size", with: @image.image_file_size
    fill_in "Image title", with: @image.image_title
    click_on "Create Image"

    assert_text "Image was successfully created"
    click_on "Back"
  end

  test "updating a Image" do
    visit images_url
    click_on "Edit", match: :first

    fill_in "Category", with: @image.category_id
    fill_in "Image", with: @image.image
    fill_in "Image content type", with: @image.image_content_type
    fill_in "Image description", with: @image.image_description
    fill_in "Image file size", with: @image.image_file_size
    fill_in "Image title", with: @image.image_title
    click_on "Update Image"

    assert_text "Image was successfully updated"
    click_on "Back"
  end

  test "destroying a Image" do
    visit images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image was successfully destroyed"
  end
end
