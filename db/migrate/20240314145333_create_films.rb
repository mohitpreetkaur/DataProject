class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :name
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
