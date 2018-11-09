require "lita"
require "dotenv"
Dotenv.load

Lita.configure do |config|
  if ENV['DEBUG']
    config.robot.adapter = :shell
  else
    require "lita-slack"
    config.robot.adapter = :slack
    config.adapters.slack.token = ENV['SLACK_TOKEN']
  end
  config.redis[:host] = ENV['REDIS_HOST'] || "localhost"
end
