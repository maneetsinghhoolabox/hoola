class CreateFeatureValues < ActiveRecord::Migration
  def change
    create_table :feature_values do |t|

      t.timestamps null: false
    end
  end
end
