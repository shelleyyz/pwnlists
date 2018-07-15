class CreateFavouritesLists < ActiveRecord::Migration[5.2] #join model connecting user with favourite list
  def change
    create_table :favourites_lists do |t|
      t.integer :list_id
      t.integer :user_id
    end
  end
end
