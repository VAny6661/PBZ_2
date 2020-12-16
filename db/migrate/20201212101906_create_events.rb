class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :document_id, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
