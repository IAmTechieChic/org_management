class Organization < ActiveRecord::Base
  has_many :child_organizations, class_name: "Organization", foreign_key: "parent_organization_id"
  belongs_to :parent_organization, class_name: "Organization"
  
  has_many :user_organizations
  has_many :users, :through => :user_organizations
end
