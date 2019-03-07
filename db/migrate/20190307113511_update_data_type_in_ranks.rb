class UpdateDataTypeInRanks < ActiveRecord::Migration[5.2]
  def change
    change_column :ranks, :rank, 'integer USING CAST(rank AS integer)'
  end
end
