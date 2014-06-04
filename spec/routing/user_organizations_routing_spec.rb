require "spec_helper"

describe UserOrganizationsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_organizations").should route_to("user_organizations#index")
    end

    it "routes to #new" do
      get("/user_organizations/new").should route_to("user_organizations#new")
    end

    it "routes to #show" do
      get("/user_organizations/1").should route_to("user_organizations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_organizations/1/edit").should route_to("user_organizations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_organizations").should route_to("user_organizations#create")
    end

    it "routes to #update" do
      put("/user_organizations/1").should route_to("user_organizations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_organizations/1").should route_to("user_organizations#destroy", :id => "1")
    end

  end
end
