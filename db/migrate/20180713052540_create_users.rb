class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :first_name
      t.text :last_name
      t.text :password_digest
      t.text :country
      t.text :image
      t.text :bio

      t.timestamps
    end
  end
end
