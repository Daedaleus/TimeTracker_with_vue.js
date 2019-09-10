class AddProjectRefToWorkLogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :work_logs, :project, foreign_key: true
  end
end
