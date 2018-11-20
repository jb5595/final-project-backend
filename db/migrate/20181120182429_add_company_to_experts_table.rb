class AddCompanyToExpertsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :experts, :company, :string

  end
end
