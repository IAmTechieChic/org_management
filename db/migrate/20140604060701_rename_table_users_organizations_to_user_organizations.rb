class RenameTableUsersOrganizationsToUserOrganizations < ActiveRecord::Migration
  def change
    rename_table :users_organizations, :user_organizations
  end
end
