class AddExpertIdToWorkExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :work_experiences, :expert_id, :integer

  end
end
