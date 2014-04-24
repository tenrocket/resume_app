class CreateJobPositions < ActiveRecord::Migration
  def change
    create_table :job_positions do |t|
      t.string :title
      t.string :employer_name
      t.text :description
      t.date :start_date
      t.date :end_date
    end
  end
end
