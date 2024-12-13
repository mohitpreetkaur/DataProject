class CreateVideoGames < ActiveRecord::Migration[7.1]
  def change
    create_table :video_games do |t|
      t.string :name
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
