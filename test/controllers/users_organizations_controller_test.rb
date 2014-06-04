require 'test_helper'

class UsersOrganizationsControllerTest < ActionController::TestCase
  setup do
    @users_organization = users_organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_organization" do
    assert_difference('UsersOrganization.count') do
      post :create, users_organization: { references: @users_organization.references, references: @users_organization.references }
    end

    assert_redirected_to users_organization_path(assigns(:users_organization))
  end

  test "should show users_organization" do
    get :show, id: @users_organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_organization
    assert_response :success
  end

  test "should update users_organization" do
    patch :update, id: @users_organization, users_organization: { references: @users_organization.references, references: @users_organization.references }
    assert_redirected_to users_organization_path(assigns(:users_organization))
  end

  test "should destroy users_organization" do
    assert_difference('UsersOrganization.count', -1) do
      delete :destroy, id: @users_organization
    end

    assert_redirected_to users_organizations_path
  end
end
