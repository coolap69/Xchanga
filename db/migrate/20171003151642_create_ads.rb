class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.references :user, foreign_key: true, null: false
      t.string :product_name
      t.integer :quantity

      t.timestamps
    end
  end
end
