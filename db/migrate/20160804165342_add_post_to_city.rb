class AddPostToCity < ActiveRecord::Migration[5.0]
  def change
  	change_table :posts do |t|
  		t.belongs_to :city, index: true
  	end
  end
end
