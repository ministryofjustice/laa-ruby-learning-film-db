class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.integer :user_id
      t.string :title
      t.string :tagline
      t.timestamps
    end
  end
end
