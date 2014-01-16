class UserStep < ActiveRecord::Migration
  def up
  	create_table :users_steps, id: false do |t|
      t.integer :user_id
      t.integer :step_id
      t.timestamps
    end
  end

  def down
  end
end
