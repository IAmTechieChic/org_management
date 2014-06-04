class CreateUsersOrganizations < ActiveRecord::Migration
  def change
    create_table :users_organizations do |t|
      t.references :organization
      t.references :user

      t.timestamps
    end
  end
end
