class CreateIncarnatorRoles < ActiveRecord::Migration
  def change
    create_table :incarnator_roles do |t|
      t.string :name,       null: false, default: ""
      t.string :description

      t.timestamps null: false
    end

    add_index :incarnator_roles, :name, unique: true
  end
end
