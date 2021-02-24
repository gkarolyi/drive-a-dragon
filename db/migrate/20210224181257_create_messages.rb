class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :from, null: false, foreign_key: { to_table: :users }
      t.references :to, null: false, foreign_key: { to_table: :users }
      t.string :subject
      t.text :body
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
