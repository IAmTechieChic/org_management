class AlterTableOrganizations < ActiveRecord::Migration
  def change
    change_table :organizations do |t|
      t.remove :root_org_id
      t.remove :parent_org_id
      t.column :parent_id, :integer
    end
  end
end
