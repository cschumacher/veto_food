class AddTimeToGame < ActiveRecord::Migration
  def change
    add_column :games, :time, :string
    add_index :games, :ref_id
  end
end
