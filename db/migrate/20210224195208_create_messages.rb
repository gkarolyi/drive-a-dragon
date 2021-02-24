class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :subject
      t.text :body
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
