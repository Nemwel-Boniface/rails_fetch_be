require 'test_helper'

class CatFactsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get cat_facts_index_url
    assert_response :success
  end
end
