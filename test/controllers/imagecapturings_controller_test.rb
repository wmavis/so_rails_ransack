require 'test_helper'

class ImagecapturingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imagecapturing = imagecapturings(:one)
  end

  test "should get index" do
    get imagecapturings_url
    assert_response :success
  end

  test "should get new" do
    get new_imagecapturing_url
    assert_response :success
  end

  test "should create imagecapturing" do
    assert_difference('Imagecapturing.count') do
      post imagecapturings_url, params: { imagecapturing: { finish_date: @imagecapturing.finish_date, name: @imagecapturing.name } }
    end

    assert_redirected_to imagecapturing_url(Imagecapturing.last)
  end

  test "should show imagecapturing" do
    get imagecapturing_url(@imagecapturing)
    assert_response :success
  end

  test "should get edit" do
    get edit_imagecapturing_url(@imagecapturing)
    assert_response :success
  end

  test "should update imagecapturing" do
    patch imagecapturing_url(@imagecapturing), params: { imagecapturing: { finish_date: @imagecapturing.finish_date, name: @imagecapturing.name } }
    assert_redirected_to imagecapturing_url(@imagecapturing)
  end

  test "should destroy imagecapturing" do
    assert_difference('Imagecapturing.count', -1) do
      delete imagecapturing_url(@imagecapturing)
    end

    assert_redirected_to imagecapturings_url
  end
end
