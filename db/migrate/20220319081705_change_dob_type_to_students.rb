class ChangeDobTypeToStudents < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :date_of_birth, :date
  end
end
