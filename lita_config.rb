require "lita"
require "dotenv"
require "lita-slack"
Dotenv.load

Lita.configure do |config|
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['SLACK_TOKEN']
  config.redis[:host] = ENV['REDIS_HOST']
end
