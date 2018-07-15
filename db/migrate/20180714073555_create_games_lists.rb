class CreateGamesLists < ActiveRecord::Migration[5.2]
  def change
    create_table :games_lists, :id => false do |t|
      t.integer :list_id
      t.integer :game_id
    end
  end
end
