class CreateFeatureProducts < ActiveRecord::Migration
  def change
    create_table :feature_products do |t|

      t.timestamps null: false
    end
  end
end
