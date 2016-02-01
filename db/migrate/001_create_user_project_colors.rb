class CreateUserProjectColors < ActiveRecord::Migration
  def change
    create_table :user_project_colors do |t|
      t.integer  :user_id, null: false
      t.integer  :project_id, null: false
      t.string   :color, limit: 6
    end
    add_index :user_project_colors, [ :user_id, :project_id ], unique: true
  end
end
