class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
