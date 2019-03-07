class CreateRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :ranks do |t|
      t.string :rank
      t.belongs_to :billboard, foreign_key: true
      t.belongs_to :song, foreign_key: true

      t.timestamps
    end
  end
end
