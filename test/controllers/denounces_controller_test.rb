require "test_helper"

class DenouncesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denounce = denounces(:one)
  end

  test "should get index" do
    get denounces_url
    assert_response :success
  end

  test "should get new" do
    get new_denounce_url
    assert_response :success
  end

  test "should create denounce" do
    assert_difference("Denounce.count") do
      post denounces_url, params: { denounce: { desc: @denounce.desc } }
    end

    assert_redirected_to denounce_url(Denounce.last)
  end

  test "should show denounce" do
    get denounce_url(@denounce)
    assert_response :success
  end

  test "should get edit" do
    get edit_denounce_url(@denounce)
    assert_response :success
  end

  test "should update denounce" do
    patch denounce_url(@denounce), params: { denounce: { desc: @denounce.desc } }
    assert_redirected_to denounce_url(@denounce)
  end

  test "should destroy denounce" do
    assert_difference("Denounce.count", -1) do
      delete denounce_url(@denounce)
    end

    assert_redirected_to denounces_url
  end
end
