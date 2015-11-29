class RoutesController < ApplicationController
  def edit
    @route = Route.find params[:id]
  end

  def update
    @route = Route.find params[:id]
    @route.update(route_params)
  end

  private
    def route_params
      params.require(:route).permit(:name, :checkpoints_attributes)      
    end
end
