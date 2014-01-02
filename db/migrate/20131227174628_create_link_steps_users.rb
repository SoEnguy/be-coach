class CreateLinkStepsUsers < ActiveRecord::Migration
  def change
    create_table :link_steps_users do |t|
      t.references :user
      t.references :step
    end
    add_index :link_steps_users, :user_id
    add_index :link_steps_users, :step_id
  end
end
