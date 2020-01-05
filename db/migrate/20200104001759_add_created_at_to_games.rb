class AddCreatedAtToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :created_at, :datetime
  end
end
