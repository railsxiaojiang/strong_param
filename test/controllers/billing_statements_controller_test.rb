require 'test_helper'

class BillingStatementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billing_statement = billing_statements(:one)
  end

  test "should get index" do
    get billing_statements_url
    assert_response :success
  end

  test "should get new" do
    get new_billing_statement_url
    assert_response :success
  end

  test "should create billing_statement" do
    assert_difference('BillingStatement.count') do
      post billing_statements_url, params: { billing_statement: { title: @billing_statement.title, user_id: @billing_statement.user_id } }
    end

    assert_redirected_to billing_statement_url(BillingStatement.last)
  end

  test "should show billing_statement" do
    get billing_statement_url(@billing_statement)
    assert_response :success
  end

  test "should get edit" do
    get edit_billing_statement_url(@billing_statement)
    assert_response :success
  end

  test "should update billing_statement" do
    patch billing_statement_url(@billing_statement), params: { billing_statement: { title: @billing_statement.title, user_id: @billing_statement.user_id } }
    assert_redirected_to billing_statement_url(@billing_statement)
  end

  test "should destroy billing_statement" do
    assert_difference('BillingStatement.count', -1) do
      delete billing_statement_url(@billing_statement)
    end

    assert_redirected_to billing_statements_url
  end
end
