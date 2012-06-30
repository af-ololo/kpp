class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :office

      t.timestamps
    end
    add_index :users, :office_id
  end
end
