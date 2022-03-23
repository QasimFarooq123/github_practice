class CreateSubDemos < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_demos do |t|
      t.string :sdname

      t.timestamps
    end
  end
end
