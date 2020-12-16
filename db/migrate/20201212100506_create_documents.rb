class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :number, null: false
      t.string :name, null: false
      t.string :doc_type, null: false
      t.datetime :completion_date, null: false
      t.integer :responsible_id, null: false
      t.datetime :release_date, null: false
      t.boolean :done, null: false
      t.integer :signatory_id, null: false
      t.timestamps
    end
  end
end
