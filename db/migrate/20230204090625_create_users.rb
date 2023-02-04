class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false # This will not accept null as input
      t.string :password_digest

      t.timestamps
    end
  end
end
