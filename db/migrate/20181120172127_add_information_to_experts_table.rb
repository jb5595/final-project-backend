class AddInformationToExpertsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :experts, :job_title, :string
    add_column :experts, :phone, :string
    add_column :experts, :email, :string
  end
end
