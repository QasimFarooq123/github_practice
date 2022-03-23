class RenameColumnInStudents < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :address, :date_of_birth
  end
end
