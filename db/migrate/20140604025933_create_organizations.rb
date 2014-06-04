class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :employee_size
      t.datetime :since
      t.text :location
      t.string :zip
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
