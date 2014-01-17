class AddDoneToUserStep < ActiveRecord::Migration
  def change
    add_column :users_steps, :done, :boolean
  end
end
