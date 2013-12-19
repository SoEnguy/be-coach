class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.string :text
      t.references :challenge

      t.timestamps
    end
    add_index :steps, :challenge_id
  end
end
