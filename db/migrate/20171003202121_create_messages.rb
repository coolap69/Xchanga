class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :ad, foreign_key: true, null: false
      t.references :sender, foreign_key: true, foreign_key: { to_table: :users }, null: false
      t.references :receiver, foreign_key: true, foreign_key: { to_table: :users }, null: false
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
