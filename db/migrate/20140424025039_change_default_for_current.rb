class ChangeDefaultForCurrent < ActiveRecord::Migration
  def change
  	change_column :job_positions, :current, :boolean, default: false
  end
end
