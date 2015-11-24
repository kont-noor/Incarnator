class CreateIncarnatorAccountsRoles < ActiveRecord::Migration
  def change
    create_table :incarnator_accounts_roles do |t|
      t.references :account, null: false, index: true
      t.references :role,    null: false, index: true

      t.timestamps null: false
    end

    add_index :incarnator_accounts_roles, [:account_id, :role_id], unique: true

    add_foreign_key :incarnator_accounts_roles,
                    :incarnator_accounts, column: :account_id
    add_foreign_key :incarnator_accounts_roles,
                    :incarnator_roles, column: :role_id
  end
end
