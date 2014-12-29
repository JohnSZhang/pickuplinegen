class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.string :text, null: false
      t.timestamps null: false
    end
  end
end
