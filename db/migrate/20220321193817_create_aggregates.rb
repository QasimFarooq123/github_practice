class CreateAggregates < ActiveRecord::Migration[5.2]
  def change
    create_table :aggregates do |t|
      t.integer :data

      t.timestamps
    end
  end
end
