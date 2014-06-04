require 'spec_helper'

describe "user_organizations/edit" do
  before(:each) do
    @user_organization = assign(:user_organization, stub_model(UserOrganization))
  end

  it "renders the edit user_organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_organization_path(@user_organization), "post" do
    end
  end
end
