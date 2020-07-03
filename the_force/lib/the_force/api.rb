class API
  BASE_URL = "https://swapi.dev/api/"

  def self.get_planets(next_page=nil)
    response = nil
    if next_page
      response = RestClient.get(next_page)
    else
      response = RestClient.get(BASE_URL + "planets/")
    end
    data = JSON.parse(response)

data["results"].each do |planet_data|
    name "Yavin IV",
    	rotation_period = planet_data["years_rotat"]
    	orbital_period= planet_data["time_of_orbit"]
    	diameter= planet_data["width_of_planet"]
    	climate= planet_data["temp_of_planet"]
    	gravity= planet_data["typr_of_gravity"]
    	terrain = planet_data["terrain_of_planet"]
    	surface_water = planet_data["level_of_water_planet"]
    	population = planet_data["number_of_people_on_planet"]
    	residents = planet_data[ "people_alive_on_planet"]

      Planets.new(
        name: name,
  	rotation_period:rotation_period,
  	orbital_period: orbital_period,
  	diameter: diameter,
  	climate: climate,
  	gravity: gravity,
  	population: population
      )
    end

    if data["next"]
      self.get_planets(data["next"])
    end

  end

  def self.get_characters

  end
end
