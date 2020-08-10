require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

URL =

  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  endpoints

  def parse_json





end
