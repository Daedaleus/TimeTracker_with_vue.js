class CreateWorkLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :work_logs do |t|
      t.date :day
      t.float :hours

      t.timestamps
    end
  end
end
