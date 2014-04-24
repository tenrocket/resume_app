class AddCurrentToJobPosition < ActiveRecord::Migration
  def change
    add_column :job_positions, :current, :boolean
  end
end
