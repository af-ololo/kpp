class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :office
      t.references :employee
      t.string :inout

      t.timestamps
    end
    add_index :visits, :office_id
    add_index :visits, :employee_id
  end
end
