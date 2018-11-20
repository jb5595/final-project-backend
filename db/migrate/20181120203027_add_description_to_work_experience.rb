class AddDescriptionToWorkExperience < ActiveRecord::Migration[5.2]
  def change
    add_column :work_experiences, :description, :string

  end
end
