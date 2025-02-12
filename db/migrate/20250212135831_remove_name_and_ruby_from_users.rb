class RemoveNameAndRubyFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :name, :string
    remove_column :users, :ruby, :string
  end
end
