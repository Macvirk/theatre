class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :movie_title
      t.integer :movie_year
      t.integer :rank
      t.text    :description
      t.date    :release_date
      t.string :country_of_origin
      t.string  :language
      t.decimal :budget
      
      t.timestamps
    end
  end
end
