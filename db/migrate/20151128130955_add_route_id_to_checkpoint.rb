class AddRouteIdToCheckpoint < ActiveRecord::Migration
  def change
    add_column :checkpoints, :route_id, :integer
  end
end
