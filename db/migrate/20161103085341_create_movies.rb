class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :rating
      t.string :language
      t.string :actor
      t.string :director
      t.string :producer

      t.timestamps null: false
    end
  end
end
