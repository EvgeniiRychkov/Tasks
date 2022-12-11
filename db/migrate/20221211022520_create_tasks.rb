class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.boolean :finished, null: false, default: false
      t.datetime :last_action, nill: false, default: DateTime.now

      t.timestamps
    end
  end
end
