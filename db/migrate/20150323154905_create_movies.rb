class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :rating
      t.text :synopsis
      t.string :duration
      t.boolean :is_3d

      t.timestamps null: false
    end
  end
end
