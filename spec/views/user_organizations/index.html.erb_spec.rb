require 'spec_helper'

describe "user_organizations/index" do
  before(:each) do
    assign(:user_organizations, [
      stub_model(UserOrganization),
      stub_model(UserOrganization)
    ])
  end

  it "renders a list of user_organizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
