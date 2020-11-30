class RoutesController < ApplicationController

    def index
        routes = Route.all
        render json: routes, status: :ok
    end

    def create
        route = Route.create!(route_params)
        render json: route, status: :ok
        p route
    end

    def route_params
        params.require(:route).permit(:distance)
    end
end
