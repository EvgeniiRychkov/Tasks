class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :user_id, null: false

      t.timestamps
    end

    add_column :tasks, :category_id, :integer, null: false
  end
end
