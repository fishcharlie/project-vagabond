class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
		t.string :first_name
		t.string :last_name
		t.string :current_city
		t.date :date_joined
		t.string :profile_photo
		t.string :password_digest
		t.string :email
	    t.timestamps
    end
  end
end
