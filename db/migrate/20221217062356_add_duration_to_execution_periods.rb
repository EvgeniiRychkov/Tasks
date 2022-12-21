class AddDurationToExecutionPeriods < ActiveRecord::Migration[7.0]
  def change
    add_column :execution_periods, :duration, :integer
  end
end
