class AddScoreToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :score, :integer
  end
end
