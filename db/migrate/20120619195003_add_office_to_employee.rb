class AddOfficeToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :office, :dependences
  end
end
