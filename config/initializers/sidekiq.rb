host = ENV.fetch('REDIS_HOST') { 'localhost' }
port = ENV.fetch('REDIS_PORT') { 6379 }
db = ENV.fetch('REDIS_DB') { 1 }
password = ENV.fetch('REDIS_PASSWORD') { false }

Sidekiq.configure_server do |config|
  config.redis = { host: host, port: port, password: password, db: db}
end

Sidekiq.configure_client do |config|
  config.redis = { host: host, port: port, password: password, db: db }
end
