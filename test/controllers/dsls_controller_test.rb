require "test_helper"

class DslsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dsl = dsls(:one)
  end

  test "should get index" do
    get dsls_url
    assert_response :success
  end

  test "should get new" do
    get new_dsl_url
    assert_response :success
  end

  test "should create dsl" do
    assert_difference("Dsl.count") do
      post dsls_url, params: { dsl: { field: @dsl.field } }
    end

    assert_redirected_to dsl_url(Dsl.last)
  end

  test "should show dsl" do
    get dsl_url(@dsl)
    assert_response :success
  end

  test "should get edit" do
    get edit_dsl_url(@dsl)
    assert_response :success
  end

  test "should update dsl" do
    patch dsl_url(@dsl), params: { dsl: { field: @dsl.field } }
    assert_redirected_to dsl_url(@dsl)
  end

  test "should destroy dsl" do
    assert_difference("Dsl.count", -1) do
      delete dsl_url(@dsl)
    end

    assert_redirected_to dsls_url
  end
end
