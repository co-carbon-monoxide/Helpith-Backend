require 'test_helper'

class HouseWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house_work = house_works(:one)
  end

  test "should get index" do
    get house_works_url, as: :json
    assert_response :success
  end

  test "should create house_work" do
    assert_difference('HouseWork.count') do
      post house_works_url, params: { house_work: { name: @house_work.name, time: @house_work.time } }, as: :json
    end

    assert_response 201
  end

  test "should show house_work" do
    get house_work_url(@house_work), as: :json
    assert_response :success
  end

  test "should update house_work" do
    patch house_work_url(@house_work), params: { house_work: { name: @house_work.name, time: @house_work.time } }, as: :json
    assert_response 200
  end

  test "should destroy house_work" do
    assert_difference('HouseWork.count', -1) do
      delete house_work_url(@house_work), as: :json
    end

    assert_response 204
  end
end
