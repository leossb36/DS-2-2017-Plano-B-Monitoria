require 'test_helper'

class OrcamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orcamento = orcamentos(:one)
  end

  test "should get index" do
    get orcamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_orcamento_url
    assert_response :success
  end

  test "should create orcamento" do
    assert_difference('Orcamento.count') do
      post orcamentos_url, params: { orcamento: { cidade: @orcamento.cidade } }
    end

    assert_redirected_to orcamento_url(Orcamento.last)
  end

  test "should show orcamento" do
    get orcamento_url(@orcamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_orcamento_url(@orcamento)
    assert_response :success
  end

  test "should update orcamento" do
    patch orcamento_url(@orcamento), params: { orcamento: { cidade: @orcamento.cidade } }
    assert_redirected_to orcamento_url(@orcamento)
  end

  test "should destroy orcamento" do
    assert_difference('Orcamento.count', -1) do
      delete orcamento_url(@orcamento)
    end

    assert_redirected_to orcamentos_url
  end
end
