class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :description
      t.string :photo_url
      t.string :keywords, array: true, default: []

      t.timestamps
    end
  end
end
