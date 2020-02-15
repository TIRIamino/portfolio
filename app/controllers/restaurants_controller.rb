class RestaurantsController<ApplicationController

  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" },
    3 => { name: "La Sauzé", address: "City, Belgarde", category: "french" },
    4 => { name: "Chez Tao", address: "City, Marseille", category: "japanese" },
    5 => { name: "Pendjab", address: "City, Lille", category: "indian" },
  }

  def index
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select do |id, restaurant|
        restaurant[:category] == params[:food_type]
      end
    end
  end

  def create
    #TODO : create a Restautant in DB
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}' and category '#{params[:category]}"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
