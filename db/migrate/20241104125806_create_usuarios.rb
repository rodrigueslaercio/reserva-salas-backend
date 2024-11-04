class CreateUsuarios < ActiveRecord::Migration[7.2]
  def change
    create_table :usuarios do |t|
      t.string :email
      t.string :password_digest
      t.string :password_confirmation

      t.timestamps
    end
  end
end
