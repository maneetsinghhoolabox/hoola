class CreateAttributeImpacts < ActiveRecord::Migration
  def change
    create_table :attribute_impacts do |t|

      t.timestamps null: false
    end
  end
end
