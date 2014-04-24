class AddSoldToJobPositions < ActiveRecord::Migration
  def change
  	add_column :job_positions, :sold, :boolean, default: false
  end
end
