require 'test_helper'

class ServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servico = servicos(:one)
  end

  test "should get index" do
    get servicos_url
    assert_response :success
  end

  test "should get new" do
    get new_servico_url
    assert_response :success
  end

  test "should create servico" do
    assert_difference('Servico.count') do
      post servicos_url, params: { servico: { descricao: @servico.descricao, nome: @servico.nome, preco: @servico.preco } }
    end

    assert_redirected_to servico_url(Servico.last)
  end

  test "should show servico" do
    get servico_url(@servico)
    assert_response :success
  end

  test "should get edit" do
    get edit_servico_url(@servico)
    assert_response :success
  end

  test "should update servico" do
    patch servico_url(@servico), params: { servico: { descricao: @servico.descricao, nome: @servico.nome, preco: @servico.preco } }
    assert_redirected_to servico_url(@servico)
  end

  test "should destroy servico" do
    assert_difference('Servico.count', -1) do
      delete servico_url(@servico)
    end

    assert_redirected_to servicos_url
  end
end
