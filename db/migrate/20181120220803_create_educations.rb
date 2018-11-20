class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.integer :expert_id
      t.string :school
      t.string :degree
      t.string :field_of_study
      t.string :description
      t.string :start_year
      t.string :end_year

      t.timestamps
    end
  end
end
