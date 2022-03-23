class AddDescriptionToStudentProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :student_projects, :description, :text
  end
end
