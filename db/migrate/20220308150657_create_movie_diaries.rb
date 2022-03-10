class CreateMovieDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_diaries do |t|
      t.text :title
      t.text :fact
      t.date :date

      t.timestamps
    end
  end
end
