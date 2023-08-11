class PagesController < ApplicationController
  def home
    response = HTTParty.get("http://localhost:1337/api/services/", format: :json)
    @body = response.parsed_response
  end
end
