require 'test_helper'

class MimimisControllerTest < ActionController::TestCase
  test "should get index" do
    get :mimimis
    assert_response :success

    assert_select 'li.mimimi' do
      assert_select 'li', 15
    end
  end
end
