class ChangePositionNameToKm < ActiveRecord::Migration
  def change
    remove_column :checkpoints, :position, :integer
    add_column :checkpoints, :km, :float
  end
end
