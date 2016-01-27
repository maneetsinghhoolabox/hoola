class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string "name" , :null => false
      t.boolean "on_sale"
      t.integer "quantity" , :null => false
      t.decimal "mrp", :precision => 8, :scale => 2
      t.decimal "ean13"
      t.decimal "wholesale_price", :precision => 8, :scale => 2
      t.decimal "selling_price", :precision => 8, :scale => 2
      t.decimal "additional_shipping_cost"
      t.decimal "width"
      t.decimal "height"
      t.decimal "depth"
      t.decimal "weight"
      t.decimal "volumetric_weight"
      t.boolean "active" , :default => true 
      t.boolean "show_price"
      t.boolean "available_for_order"
      t.string "visibility"
      t.string "permalink" 
      t.string "sku_code"
      t.string "hupc_codde"       
      t.timestamps null: false
    end
    add_index("products", "permalink")
    add_index("products", "name")
    
  end
end
