class CheckpointsController < ApplicationController
  def index
    @checkpoints = Checkpoint.all.includes(:notices)
  end
end
