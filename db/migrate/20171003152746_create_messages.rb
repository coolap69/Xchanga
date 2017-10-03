class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :ad, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
