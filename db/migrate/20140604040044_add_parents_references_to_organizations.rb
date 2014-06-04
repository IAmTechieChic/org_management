class AddParentsReferencesToOrganizations < ActiveRecord::Migration
  def change
    change_table :organizations do |t|
      t.references  :root_org
      t.references  :parent_org
    end
  end
end
