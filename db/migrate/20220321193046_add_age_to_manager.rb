class AddAgeToManager < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :age, :interger
  end
end
