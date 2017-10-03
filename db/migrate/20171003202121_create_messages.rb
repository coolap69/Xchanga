class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :ad, foreign_key: true
      t.references :sender, foreign_key: true, foreign_key: { to_table: :users }
      t.references :receiver, foreign_key: true, foreign_key: { to_table: :users }
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
