envfile = if File.exist?("/var/app/environ")
            "/var/app/environ"
          else
            "./.env"
          end
File.read(envfile).each_line do |l|
  l = l.chomp
  puts "Env set: #{l}"
  k, v = *l.split("=")
  ENV[k] = v
end

pid1 = spawn("./bin/web")
pid2 = spawn("bundle exec lita")

p Process.waitall
puts "Exit done"
