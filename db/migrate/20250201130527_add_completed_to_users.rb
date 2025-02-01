class AddCompletedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :completed, :boolean
  end
end
