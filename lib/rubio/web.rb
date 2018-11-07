require 'sinatra'
require 'json'

module Rubio
  class Web < Sinatra::Base
    get '/' do
      content_type 'application/json'
      {rubio: "OK"}.to_json
    end
  end
end

Rubio::Web.run!
exit
