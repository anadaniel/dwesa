class CheckpointsController < ApplicationController
  def index
    @checkpoints = Checkpoint.all.includes(:active_notices)
  end
end
