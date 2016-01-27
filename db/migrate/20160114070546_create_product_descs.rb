class CreateProductDescs < ActiveRecord::Migration
  def change
    create_table :product_descs do |t|
      t.references :product
      t.string "short_description"
      t.text "description"
      t.text "meta_description"
      t.text "meta_keywords"
      t.string "meta_title"

      t.timestamps null: false
    end
    add_index("product_descs", "product_id")
  end
end
