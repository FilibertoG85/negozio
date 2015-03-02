require 'test_helper'

class ProdottiControllerTest < ActionController::TestCase
  setup do
    @prodotto = prodotti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prodotti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prodotto" do
    assert_difference('Prodotto.count') do
      post :create, prodotto: { descrizione: @prodotto.descrizione, image_url: @prodotto.image_url, nome: @prodotto.nome, utente_id: @prodotto.utente_id }
    end

    assert_redirected_to prodotto_path(assigns(:prodotto))
  end

  test "should show prodotto" do
    get :show, id: @prodotto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prodotto
    assert_response :success
  end

  test "should update prodotto" do
    patch :update, id: @prodotto, prodotto: { descrizione: @prodotto.descrizione, image_url: @prodotto.image_url, nome: @prodotto.nome, utente_id: @prodotto.utente_id }
    assert_redirected_to prodotto_path(assigns(:prodotto))
  end

  test "should destroy prodotto" do
    assert_difference('Prodotto.count', -1) do
      delete :destroy, id: @prodotto
    end

    assert_redirected_to prodotti_path
  end
end
