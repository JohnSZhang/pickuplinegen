class CreatePartials < ActiveRecord::Migration
  def change
    create_table :partials do |t|
      t.string :type, null: false
      t.string :text, null: false 
      t.timestamps null: false
    end
  end
end
