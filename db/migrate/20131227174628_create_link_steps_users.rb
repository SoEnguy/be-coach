class CreateLinkStepsUsers < ActiveRecord::Migration
  def change
    create_table :link_steps_users do |t|
      t.references :user
      t.references :step
      t.references :challenge
      t.boolean :isComplete
    end
    add_index :link_steps_users, :user_id
    add_index :link_steps_users, :step_id
    add_index :link_steps_users, :challenge_id
    add_index :link_steps_users, :isComplete
  end
end
