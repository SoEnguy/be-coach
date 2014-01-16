class CreateStepSelections < ActiveRecord::Migration
  def change
    create_table :step_selections do |t|
      t.integer :user_id
      t.integer :step_id
      t.integer :challenge_id
      t.boolean :isComplete

      t.timestamps
    end
  end
end
