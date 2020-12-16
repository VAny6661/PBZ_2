class CreateResponsibles < ActiveRecord::Migration[6.0]
  def change
    create_table :responsibles do |t|
      t.string :subdevision, null: false
      t.string :chair, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
