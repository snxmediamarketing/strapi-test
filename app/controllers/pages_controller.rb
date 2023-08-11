class PagesController < ApplicationController
  def home
    response = HTTParty.get("http://167.172.149.31:1337/api/services", format: :json)
    @body = response.parsed_response
  end
end
