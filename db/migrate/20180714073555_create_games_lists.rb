class CreateGamesLists < ActiveRecord::Migration[5.2]
  def change
    create_table :games_lists, :id => false do |t|
      t.integer :game_id
      t.integer :list_id
    end
  end
end
