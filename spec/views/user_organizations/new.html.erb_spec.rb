require 'spec_helper'

describe "user_organizations/new" do
  before(:each) do
    assign(:user_organization, stub_model(UserOrganization).as_new_record)
  end

  it "renders new user_organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_organizations_path, "post" do
    end
  end
end
