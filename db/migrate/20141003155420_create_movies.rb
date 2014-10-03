class CreateMovies < ActiveRecord::Migration
  def up
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'

      #Fields to Automatically track when movies are added
      t.timestamps
    end
  end

  def down
    drop_table 'movies' #drops table
  end
end
