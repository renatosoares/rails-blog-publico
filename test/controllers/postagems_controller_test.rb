require 'test_helper'

class PostagemsControllerTest < ActionController::TestCase
  setup do
    @postagem = postagems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postagems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postagem" do
    assert_difference('Postagem.count') do
      post :create, postagem: { carater: @postagem.carater, email: @postagem.email, nome: @postagem.nome, texto: @postagem.texto }
    end

    assert_redirected_to postagem_path(assigns(:postagem))
  end

  test "should show postagem" do
    get :show, id: @postagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postagem
    assert_response :success
  end

  test "should update postagem" do
    patch :update, id: @postagem, postagem: { carater: @postagem.carater, email: @postagem.email, nome: @postagem.nome, texto: @postagem.texto }
    assert_redirected_to postagem_path(assigns(:postagem))
  end

  test "should destroy postagem" do
    assert_difference('Postagem.count', -1) do
      delete :destroy, id: @postagem
    end

    assert_redirected_to postagems_path
  end
end
