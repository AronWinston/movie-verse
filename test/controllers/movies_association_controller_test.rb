require 'test_helper'

class MoviesAssociationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movies_association_index_url
    assert_response :success
  end

  test "should get show" do
    get movies_association_show_url
    assert_response :success
  end

  test "should get edit" do
    get movies_association_edit_url
    assert_response :success
  end

  test "should get new" do
    get movies_association_new_url
    assert_response :success
  end

  test "should get create" do
    get movies_association_create_url
    assert_response :success
  end

  test "should get update" do
    get movies_association_update_url
    assert_response :success
  end

  test "should get destroy" do
    get movies_association_destroy_url
    assert_response :success
  end

end
