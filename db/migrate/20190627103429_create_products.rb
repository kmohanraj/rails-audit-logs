class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.float :price
      t.string :date

      t.timestamps
    end
  end
end
