require "test_helper"

class Provider::TicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get provider_tickets_index_url
    assert_response :success
  end

  test "should get show" do
    get provider_tickets_show_url
    assert_response :success
  end

  test "should get update" do
    get provider_tickets_update_url
    assert_response :success
  end
end
