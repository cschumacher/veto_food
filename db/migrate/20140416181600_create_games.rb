class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :curr_suggestion
      t.string :prev_suggestions
      t.string :ref_id

      t.timestamps
    end
  end
end
