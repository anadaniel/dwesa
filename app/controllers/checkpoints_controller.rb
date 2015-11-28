class CheckpointsController < ApplicationController
  def index
    @checkpoints = Checkpoint.all
  end
end
