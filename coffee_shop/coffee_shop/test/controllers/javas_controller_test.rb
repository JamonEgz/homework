require 'test_helper'

class JavasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @java = javas(:one)
  end

  test "should get index" do
    get javas_url
    assert_response :success
  end

  test "should get new" do
    get new_java_url
    assert_response :success
  end

  test "should create java" do
    assert_difference('Java.count') do
      post javas_url, params: { java: { description: @java.description, image: @java.image, name: @java.name, price: @java.price, size: @java.size } }
    end

    assert_redirected_to java_url(Java.last)
  end

  test "should show java" do
    get java_url(@java)
    assert_response :success
  end

  test "should get edit" do
    get edit_java_url(@java)
    assert_response :success
  end

  test "should update java" do
    patch java_url(@java), params: { java: { description: @java.description, image: @java.image, name: @java.name, price: @java.price, size: @java.size } }
    assert_redirected_to java_url(@java)
  end

  test "should destroy java" do
    assert_difference('Java.count', -1) do
      delete java_url(@java)
    end

    assert_redirected_to javas_url
  end
end
