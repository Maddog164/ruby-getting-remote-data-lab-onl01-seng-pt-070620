require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  def get_response_body(URL)
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
