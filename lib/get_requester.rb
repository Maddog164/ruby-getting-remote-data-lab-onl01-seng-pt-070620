require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

URL =

  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    hold_info = JSON.parse(self.get_response_body)
    hold_info.collect do |info|
      program["sub-info"]
    end
  end





end
