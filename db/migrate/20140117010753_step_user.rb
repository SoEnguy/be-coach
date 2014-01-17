class StepUser < ActiveRecord::Migration
  def change
  	create_table :steps_users, id: false do |t|
      t.references :user
      t.references :step
    end
  end

  def down
  end
end
