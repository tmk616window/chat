class AddColumnUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname ,:string
    add_column :users, :from ,:string
    add_column :users, :old ,:integer
    add_column :users, :email ,:string
    add_column :users, :born_month ,:integer
    add_column :users, :born_date ,:integer
    add_column :users, :message ,:text
  end
end
