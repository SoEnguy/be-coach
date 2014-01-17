class UserStep < ActiveRecord::Migration
  def change
  	create_table :users_steps, id: false do |t|
      t.integer :user_id
      t.integer :step_id
      t.boolean :done

      t.timestamps
    end
  end
end
