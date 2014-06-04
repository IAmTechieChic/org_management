class AlterTableOrganizationsRenameColumn < ActiveRecord::Migration
  def change
    rename_column :organizations, :parent_id, :parent_organization_id
  end
end
