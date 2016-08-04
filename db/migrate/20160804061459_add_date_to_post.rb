class AddDateToPost < ActiveRecord::Migration[5.0]
  	def change
	  	change_table :posts do |t|
	  		t.string :date_created
	  	end
	end
end
