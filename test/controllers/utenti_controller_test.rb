require 'test_helper'

class UtentiControllerTest < ActionController::TestCase
  setup do
    @utente = utenti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:utenti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create utente" do
    assert_difference('Utente.count') do
      post :create, utente: { cognome: @utente.cognome, nickname: @utente.nickname, nome: @utente.nome, password: @utente.password }
    end

    assert_redirected_to utente_path(assigns(:utente))
  end

  test "should show utente" do
    get :show, id: @utente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @utente
    assert_response :success
  end

  test "should update utente" do
    patch :update, id: @utente, utente: { cognome: @utente.cognome, nickname: @utente.nickname, nome: @utente.nome, password: @utente.password }
    assert_redirected_to utente_path(assigns(:utente))
  end

  test "should destroy utente" do
    assert_difference('Utente.count', -1) do
      delete :destroy, id: @utente
    end

    assert_redirected_to utenti_path
  end
end
