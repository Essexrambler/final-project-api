require 'test_helper'

class AdoptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adopt = adopts(:one)
  end

  test "should get index" do
    get adopts_url, as: :json
    assert_response :success
  end

  test "should create adopt" do
    assert_difference('Adopt.count') do
      post adopts_url, params: { adopt: { amount: @adopt.amount, animal_id: @adopt.animal_id, user_id: @adopt.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show adopt" do
    get adopt_url(@adopt), as: :json
    assert_response :success
  end

  test "should update adopt" do
    patch adopt_url(@adopt), params: { adopt: { amount: @adopt.amount, animal_id: @adopt.animal_id, user_id: @adopt.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy adopt" do
    assert_difference('Adopt.count', -1) do
      delete adopt_url(@adopt), as: :json
    end

    assert_response 204
  end
end
