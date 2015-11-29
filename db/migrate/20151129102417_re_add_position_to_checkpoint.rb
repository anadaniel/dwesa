class ReAddPositionToCheckpoint < ActiveRecord::Migration
  def change
    add_column :checkpoints, :position, :integer
    remove_column :checkpoints, :km, :float
  end
end
