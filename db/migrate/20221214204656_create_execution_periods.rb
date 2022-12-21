class CreateExecutionPeriods < ActiveRecord::Migration[7.0]
  def change
    create_table :execution_periods do |t|
      t.datetime :start_time, nill: false
      t.datetime :end_time
      t.integer :task_id, null: false

      t.timestamps
    end
  end
end
