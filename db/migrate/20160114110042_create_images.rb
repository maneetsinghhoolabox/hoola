class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :product
      t.integer "position"
      t.boolean "cover"
      t.timestamps null: false
    end
  end
end
