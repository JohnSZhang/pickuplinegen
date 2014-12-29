class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.string :symbol, null: false
      t.string :object_type, null: false
      t.timestamps null: false
    end
  end
end
