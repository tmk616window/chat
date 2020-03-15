class ChangeDatatypebronDateOfusers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :born_date, 'date'
  end
end
