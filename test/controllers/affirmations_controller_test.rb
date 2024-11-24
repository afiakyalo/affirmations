require "test_helper"

class AffirmationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @affirmation = affirmations(:one) # Assuming you have a fixture named :one
  end

  test "should get index" do
    get affirmations_url
    assert_response :success
    assert_select '#affirmation p', @affirmation.content
  end

  test "should get next affirmation" do
    get next_affirmation_url
    assert_response :success
    json_response = JSON.parse(@response.body)
    assert json_response['content'].present?
  end
end
