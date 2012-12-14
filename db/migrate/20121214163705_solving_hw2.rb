class SolvingHw2 < ActiveRecord::Migration
  def up
  	change_table "reviews" do |t|
      t.index :movie_id
      t.index :moviegoer_id
  	end
  end

  def down
  	remove_index "reviews", :name => "movie_id"
  	remove_index "reviews", :name => "moviegoer_id"
  end
end
