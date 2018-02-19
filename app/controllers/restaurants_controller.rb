require "stupid_coaching"

class RestaurantsController < ApplicationController
  RESTAURANTS = [{name: 'Catedral', category: 'Portuguese'},
                  {name: 'Maracanã', category: 'Brazilian'}]

  # app/views/restaurants/index.html.erb
  def index
    # @restaurants = Restaurant.all # tommorrow!
    @restaurants = RESTAURANTS # only the variables defined with @ are available on the view

    if params[:category]
      @restaurants = @restaurants.select {|restaurant| restaurant[:category] == params[:category]}
    end
  end

  # app/views/restaurants/create.html.erb -> does not exist
  # render plain just renders the string
  def create
    render plain: "Created restaurant #{params[:name]}"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i - 1]

    # coach_answer_enhanced(params[?????])
  end
end
