class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :post
      t.references :office

      t.timestamps
    end
    add_index :employees, :office_id
  end
end
