class RoutesController < ApplicationController
  def edit
    @route = Route.find params[:id]
  end
end
